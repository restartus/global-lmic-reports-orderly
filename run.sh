#!/usr/bin/env bash
set -e
./orderly run ecdc date=$(date "+%Y-%m-%d")

## Fill these in for now manually. Eventually we will use the batch
## interface.
./orderly run lmic_reports iso3c=AGO
./orderly run lmic_reports iso3c=AFG
./orderly run lmic_reports iso3c=ALB
./orderly run lmic_reports iso3c=DZA
./orderly run lmic_reports iso3c=AGO
./orderly run lmic_reports iso3c=ARG
./orderly run lmic_reports iso3c=ARM
./orderly run lmic_reports iso3c=AZE
./orderly run lmic_reports iso3c=BGD
./orderly run lmic_reports iso3c=BLR
./orderly run lmic_reports iso3c=BLZ
./orderly run lmic_reports iso3c=BEN
./orderly run lmic_reports iso3c=BTN
./orderly run lmic_reports iso3c=BOL
./orderly run lmic_reports iso3c=BIH
./orderly run lmic_reports iso3c=BWA
./orderly run lmic_reports iso3c=BRA
./orderly run lmic_reports iso3c=BGR
./orderly run lmic_reports iso3c=BFA
./orderly run lmic_reports iso3c=BDI
./orderly run lmic_reports iso3c=CPV
./orderly run lmic_reports iso3c=KHM
./orderly run lmic_reports iso3c=CMR
./orderly run lmic_reports iso3c=CAF
./orderly run lmic_reports iso3c=TCD
./orderly run lmic_reports iso3c=CHN
./orderly run lmic_reports iso3c=COL
#./orderly run lmic_reports iso3c=COM
./orderly run lmic_reports iso3c=COG
./orderly run lmic_reports iso3c=CRI
./orderly run lmic_reports iso3c=CIV
./orderly run lmic_reports iso3c=CUB
#./orderly run lmic_reports iso3c=PRK
./orderly run lmic_reports iso3c=COD
./orderly run lmic_reports iso3c=DJI
./orderly run lmic_reports iso3c=DOM
./orderly run lmic_reports iso3c=ECU
./orderly run lmic_reports iso3c=EGY
./orderly run lmic_reports iso3c=SLV
./orderly run lmic_reports iso3c=GNQ
./orderly run lmic_reports iso3c=ERI
./orderly run lmic_reports iso3c=SWZ
./orderly run lmic_reports iso3c=ETH
./orderly run lmic_reports iso3c=FJI
./orderly run lmic_reports iso3c=GAB
./orderly run lmic_reports iso3c=GMB
./orderly run lmic_reports iso3c=GEO
./orderly run lmic_reports iso3c=GHA
./orderly run lmic_reports iso3c=GRD
./orderly run lmic_reports iso3c=GTM
./orderly run lmic_reports iso3c=GIN
./orderly run lmic_reports iso3c=GNB
./orderly run lmic_reports iso3c=GUY
./orderly run lmic_reports iso3c=HTI
./orderly run lmic_reports iso3c=HND
./orderly run lmic_reports iso3c=IND
./orderly run lmic_reports iso3c=IDN
./orderly run lmic_reports iso3c=IRN
./orderly run lmic_reports iso3c=IRQ
./orderly run lmic_reports iso3c=JAM
./orderly run lmic_reports iso3c=JOR
./orderly run lmic_reports iso3c=KAZ
./orderly run lmic_reports iso3c=KEN
#./orderly run lmic_reports iso3c=KIR
./orderly run lmic_reports iso3c=KGZ
./orderly run lmic_reports iso3c=LAO
./orderly run lmic_reports iso3c=LBN
#./orderly run lmic_reports iso3c=LSO
./orderly run lmic_reports iso3c=LBR
./orderly run lmic_reports iso3c=LBY
./orderly run lmic_reports iso3c=MDG
./orderly run lmic_reports iso3c=MWI
./orderly run lmic_reports iso3c=MYS
./orderly run lmic_reports iso3c=MDV
./orderly run lmic_reports iso3c=MLI
./orderly run lmic_reports iso3c=MRT
./orderly run lmic_reports iso3c=MUS
./orderly run lmic_reports iso3c=MEX
#./orderly run lmic_reports iso3c=FSM
./orderly run lmic_reports iso3c=MNG
./orderly run lmic_reports iso3c=MNE
./orderly run lmic_reports iso3c=MAR
./orderly run lmic_reports iso3c=MOZ
./orderly run lmic_reports iso3c=MMR
./orderly run lmic_reports iso3c=NAM
./orderly run lmic_reports iso3c=NPL
./orderly run lmic_reports iso3c=NIC
./orderly run lmic_reports iso3c=NER
./orderly run lmic_reports iso3c=NGA
./orderly run lmic_reports iso3c=MKD
./orderly run lmic_reports iso3c=PAK
./orderly run lmic_reports iso3c=PNG
./orderly run lmic_reports iso3c=PRY
./orderly run lmic_reports iso3c=PER
./orderly run lmic_reports iso3c=PHL
./orderly run lmic_reports iso3c=MDA
./orderly run lmic_reports iso3c=ROU
./orderly run lmic_reports iso3c=RUS
./orderly run lmic_reports iso3c=RWA
./orderly run lmic_reports iso3c=LCA
./orderly run lmic_reports iso3c=VCT
#./orderly run lmic_reports iso3c=WSM
./orderly run lmic_reports iso3c=STP
./orderly run lmic_reports iso3c=SEN
./orderly run lmic_reports iso3c=SRB
./orderly run lmic_reports iso3c=SLE
#./orderly run lmic_reports iso3c=SLB
./orderly run lmic_reports iso3c=SOM
./orderly run lmic_reports iso3c=ZAF
./orderly run lmic_reports iso3c=SSD
./orderly run lmic_reports iso3c=LKA
./orderly run lmic_reports iso3c=PSE
./orderly run lmic_reports iso3c=SDN
./orderly run lmic_reports iso3c=SUR
./orderly run lmic_reports iso3c=SYR
#./orderly run lmic_reports iso3c=TJK
./orderly run lmic_reports iso3c=THA
./orderly run lmic_reports iso3c=TLS
./orderly run lmic_reports iso3c=TGO
#./orderly run lmic_reports iso3c=TON
./orderly run lmic_reports iso3c=TUN
./orderly run lmic_reports iso3c=TUR
#./orderly run lmic_reports iso3c=TKM
./orderly run lmic_reports iso3c=UGA
./orderly run lmic_reports iso3c=UKR
./orderly run lmic_reports iso3c=TZA
./orderly run lmic_reports iso3c=UZB
#./orderly run lmic_reports iso3c=VUT
./orderly run lmic_reports iso3c=VEN
./orderly run lmic_reports iso3c=VNM
#./orderly run lmic_reports iso3c=YEM
./orderly run lmic_reports iso3c=ZMB
./orderly run lmic_reports iso3c=ZWE