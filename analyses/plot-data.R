# Plotting the data

## Packages ----

library(data.table)
library(ggplot2)

## Files ----

pantheria_path = here::here("data", "pantheria", "PanTHERIA_1-0_WR05_Aug2008.txt")
pantheria_data = fread(file = pantheria_path)

## Plot ----

# Base plot
plot(x = pantheria_data$`5-1_AdultBodyMass_g`, y = pantheria_data$`18-1_BasalMetRate_mLO2hr`)

# gg plot
ggplot(pantheria_data) +
  aes(x = `5-1_AdultBodyMass_g`, y = `18-1_BasalMetRate_mLO2hr`) +
  geom_point()
