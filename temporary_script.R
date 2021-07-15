# Temporary R script to help with project initialization
# DELETE AFTER USE

# Initialize renv
renv::init()

# Install packages to renv environment
install.packages("usethis")
install.packages("devtools")
devtools::install_github("katekathrynkat/katereR")
install.packages("tidyverse")

# Create license
usethis::use_mit_license("Kathryn Culhane")

# Start git repo
usethis::use_git(message = "initial commit")
usethis::use_github(protocol = "https")
