#################################
#####     Factor levels     #####
#################################

# Functions to change order of factor levels

# Sample type (sticky, pitfall, diet)
fl_sample <- function(.data, sample_type = sample_type){
  mutate(.data,
         sample_type = factor(sample_type, 
                              levels = c("sticky", "pitfall",
                                         "diet", "diet_veg")))
}

# Add binary columns for land use and veg by site
addcol_useveg <- function(.data){
  left_join(.data, read_csv("data_raw/field/naxos_meta.csv")[c(2,4,5)])
}
