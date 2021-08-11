#################################
#####     Factor levels     #####
#################################

# Functions to change levels of factors

# Sample type
fl_sample <- function(.data, sample_type = sample_type){
  mutate(.data,
         sample_type = factor(sample_type, 
                              levels = c("sticky", "pitfall", "diet")))
}
