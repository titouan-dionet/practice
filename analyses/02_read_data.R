# Read data
#
# This script will read the Wilfinder datasets.
# 
# All functions used in the script have been developed for this project
# and can be found in the folder R/.
#
# Titouan Dionet <titouan.dionet@univ-lorraine.fr>

# Read WildFinder datasets ----
wildfinder_list = wildfinder_read()

# Select Ursidae ----
ursidae_data = select_ursidae(wildfinder_list[[3]])

# Join tables ----
data = join_tables(ursidae_data, data_ecoregions = wildfinder_list[[1]], data_ecor_spec = wildfinder_list[[2]])

# Count ecoregions occurences ----
eco_ursidae = count_ecoregions(data)

# Plot graph ----
PLOT = plot_ecoregions(eco_ursidae)
PLOT
