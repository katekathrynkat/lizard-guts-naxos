##################################
#####     Create reports     #####
##################################

# Compile .Rmd documents as a webpage and/or HTML reports

# Packages
library(rmarkdown)
library(katereR)

##### Create docs for website #####
# Render to /docs

rmarkdown::render_site("R_markdown")

##### Standalone HTML docs #####
# Render to /reports

#### DO NOT USE THIS CODE IT ERASES FILES?!?!?!?!
# Index
katereR::render_report(input = "../R_markdowns/index.Rmd",
                       output_file = "../reports/index.html")

# 01 Metadata
katereR::render_report(input = "R_markdowns/01_metadata.html",
                       output_file = "../reports/01_metadata.html")

# 02 Data wrangling
katereR::render_report(input = "R_markdowns/02_data_wrangling.html",
                       output_file = "../reports/02_data_wrangling.html")
