##################################
#####     Create reports     #####
##################################

# Compile .Rmd documents as a webpage and/or HTML reports

# Packages
library(rmarkdown)
library(katereR)

##### Create docs for website #####
# Render to /docs

rmarkdown::render_site("R_markdowns")

##### Standalone HTML docs #####
# Render to /reports

# 00 Datasets
katereR::render_report(input = "R_markdowns/00_datasets.Rmd",
                       output_file = "../reports/00_datasets.html")

# 01 Data exploration
katereR::render_report(input = "R_markdowns/01_data_exploration.Rmd",
                       output_file = "../reports/01_data_exploration.html")

# 99 Notes
katereR::render_report(input = "R_markdowns/99_notes.Rmd",
                       output_file = "../reports/99_notes.html")
