orderly_id <- tryCatch(orderly::orderly_run_info()$id,
                       error = function(e) "<id>") # bury this in the html, docx

rmarkdown::render("index.Rmd", output_format = c("html_document", "pdf_document"),
                  output_options = list(pandoc_args = paste0("--metadata=title:",continent," COVID-19 report")))
#rmarkdown::render_site("index.Rmd")


# url_structure: /<iso_date>/<iso_country>/report.html
# url_latest: /latest/<iso_country>/report.html
# get the figures out into a run directory
# figures/
# fig.path or fig.prefix
# pdf/
# can get pdfs to sharepoint easily or latest update by nuking the previous reports
# nightly github release with attached binaries
# rewrite the html output to remove bootstrap
# report.html to index.html