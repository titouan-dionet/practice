# Author: Titouan Dionet
# Date: 2024/12/02

# Setup project ----

## Install packages ----
devtools::install_deps(upgrade = "never")

## Load packages & functions ----
devtools::load_all()

# Run project ----

## Download raw data ----
source(here::here("analyses", "01_download_data.R"))

## Read data ----
source(here::here("analyses", "02_read_data.R"))
