library(targets)
library(ggplot2)
library(data.table)

tar_source() #load functions in R/

list(
  # Read files
  tar_target(name = wildfinder_data, command = wildfinder_read()), 
  
  # Select Ursidae
  tar_target(name = ursidae_data, command = select_ursidae(data = wildfinder_data[[3]])),
  
  # Join tables
  tar_target(name = joined_data, command = join_tables(data_ursidae = ursidae_data, data_ecoregions = wildfinder_data[[1]], data_ecor_spec = wildfinder_data[[2]])),
  
  # Count ecoregions
  tar_target(name = eco_ursidae, command = count_ecoregions(joined_data)),
  
  # Plot data
  tar_target(name = plot_eco, command = plot_ecoregions(eco_ursidae)),
  
  # Render quarto
  tarchetypes::tar_quarto(index, "index.qmd")
  
)