# Author: Titouan Dionet
# Date: 2024/12/02

# Setup project ----

## Install packages ----
devtools::install_deps(upgrade = "never")

## Load packages & functions ----
# devtools::load_all() # this line will not be run when using target

# Run project ----

## Download raw data ----
# source(here::here("analyses", "01_download_data.R"))

## Read data ----
# source(here::here("analyses", "02_ursidae_analysis.R"))

## Quarto ----
# quarto::quarto_render(input = "index.qmd")

## Target ----
# ---- project execution
targets::tar_config_set(
  store  = "outputs/pipeline/",
  script = "analyses/pipeline.R"
)

# Before make
targets::tar_visnetwork()

# Make
targets::tar_make()

# After make
targets::tar_visnetwork()