#' Download Wildfinder datasets
#' 
#' @description 
#' This function downloads the Wildfinder datasets (csv files) hosted on the 
#' GitHub repository <https://github.com/rdatatoolbox/datarepo/>.
#' The files `wildfinder-ecoregions_list.csv`, `wildfinder-ecoregions_species.csv`
#' and `wildfinder-mammals_list.csv` will be stored in #' `data/wildfinder/`. 
#' This folder will be created if required.
#' 
#' @return This function returns the path (`character`) to the downloaded files
#' (e.g. `data/wildfinder/wildfinder-ecoregions_list.csv`).
#' 
#' @export
#' 

dl_wildfinder_data = function() {
  path = here::here("data", "wildfinder")
  
  # Create directory
  dir.create(path)
  
  # Download data
  base_url = "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/wildfinder/"
  filenames = c("wildfinder-ecoregions_list.csv", "wildfinder-ecoregions_species.csv", "wildfinder-mammals_list.csv")
  
  dest_file_vec = c()
  
  for (filename in filenames) {
    final_url = paste0(base_url, filename)
    dest_file = here::here(path, filename)
    
    utils::download.file(url = final_url, 
                         destfile = dest_file,
                         mode     = "wb")
    dest_file_vec = c(dest_file_vec, dest_file)
  }
  
  return(dest_file_vec)
  
}