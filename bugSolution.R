```R
# Safer way to handle potential non-existent columns
df <- data.frame(a = 1:5, b = 6:10)

if (!('c' %in% colnames(df))) {
  stop("Column 'c' not found in the data frame")
} else {
  result <- df$c + 1
}

# Or using dplyr for more concise error handling
library(dplyr)

df %>% 
  mutate(c = ifelse(exists("c", df), c +1, NA))
```