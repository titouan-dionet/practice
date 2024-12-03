# Plotting the data

## Packages ----

library(data.table)
library(ggplot2)

## Files ----

pantheria_path = here::here("data", "pantheria", "PanTHERIA_1-0_WR05_Aug2008.txt")
pantheria_data = fread(file = pantheria_path)
pantheria_data[pantheria_data == -999] = NA # Replace -999 by NA

## Plot ----

# Base plot
plot(x = pantheria_data$`5-1_AdultBodyMass_g`, y = pantheria_data$`18-1_BasalMetRate_mLO2hr`)

# gg plot
ggplot(pantheria_data) +
  aes(x = `5-1_AdultBodyMass_g`/1000, y = `18-1_BasalMetRate_mLO2hr`/1000) +
  coord_cartesian(xlim = c(0, 1000), ylim = c(0, 100)) +
  geom_point() +
  labs(x = "Adult body mass (kg)",
       y = "Basal metabolic rate (µL O2 / hr)") +
  theme_bw()

# New graph
ggplot(pantheria_data) +
  aes(x = MSW05_Genus) +
  geom_bar()
