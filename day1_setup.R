# day1_setup.R
# Purpose: minimal reproducible script to demonstrate R environment + write a sample CSV
# load core package
library(tidyverse)

# create a small tibble (sample clinical data)
sample_df <- tibble(
  id = 1:6,
  age = c(25, 34, 29, 40, 30, 27),
  group = c("control", "disease", "control", "disease", "control", "disease"),
  sex = c("F", "M", "F", "M", "F", "M")
)

# print to console so you can read results in the RStudio console
print(sample_df)

# save to CSV for later use
readr::write_csv(sample_df, "sample_clinical.csv")

# confirm file saved
cat("Saved sample_clinical.csv in", getwd(), "\n")

View(sample_df)
str(sample_df)
summary(sample_df)
