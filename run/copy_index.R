#!/usr/bin/env Rscript

## TODO:
## * overall index page
## * figures updated and change below
## * filter by most recent run per country

file_copy <- function(from, to) {
  ok <- file.copy(from, to, overwrite = TRUE, recursive = TRUE)
  if (any(!ok)) {
    stop("There was an error copying files")
  }
}

## Possibly useful:
## dir("gh-pages", pattern = "index\\.html$", recursive = TRUE)
copy_index <- function(date = NULL, is_latest = TRUE) {
  if (is.null(date)) {
    date <- as.character(Sys.Date())
  }

  sql <- 'SELECT report_version.id, report_version.report
            FROM report_version
            JOIN parameters
              ON parameters.report_version = report_version.id
           WHERE report_version.report IN ("index_page", "parameters", "404", "FAQ", "news")
             AND parameters.name = \'date\'
             AND parameters.value = $1
           ORDER BY report_version.id'
  db <- orderly::orderly_db("destination")
  on.exit(DBI::dbDisconnect(db))
  res <- DBI::dbGetQuery(db, sql, date)

  if (any(duplicated(res$report))) {
    keep <- tapply(seq_len(nrow(res)), res$report, max)
    res <- res[keep, ]
    rownames(res) <- NULL
  }

  msg <- setdiff(c("index_page", "parameters"), res$report)
  if (length(msg) > 0) {
    stop("Did not find report for ", paste(msg, collapse = ", "))
  }
  
  id_index <- res$id[res$report == "index_page"]
  id_params <- res$id[res$report == "parameters"]
  id_404 <- res$id[res$report == "404"]
  id_FAQ <- res$id[res$report == "FAQ"]
  id_News <- res$id[res$report == "news"]

  message(sprintf("Copying index (%s), parameters (%s), 404 (%s), FAQ (%s) and News (%s) pages",
                  id_index, id_params, id_404, id_FAQ, id_News))
  
  target <- "gh-pages"
  src_index <- file.path("archive", "index_page", id_index,"index.html")
  src_params <- file.path("archive", "parameters", id_params, "parameters.html")
  src_404 <- file.path("archive", "404", id_404, "404.html")
  src_FAQ <- file.path("archive", "FAQ", id_FAQ, "FAQ.html")
  src_News <- file.path("archive", "news", id_News, "News.html")
  file_copy(c(src_index, src_params, src_404, src_FAQ, src_News), target)
}


if (!interactive()) {
  usage <- "Usage:\n./copy_index.R [<date>]"
  args <- docopt::docopt(usage)
  copy_index(args$date)
}

