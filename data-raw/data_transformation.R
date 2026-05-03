library(readr)
df <- read.csv(paste0(rprojroot::find_rstudio_root_file(),"/data-raw/csv/job_salary_prediction_dataset.csv"))
usethis::use_data(df, overwrite = TRUE)
