#' Read Wildfinder datasets
#' 
#' @description 
#' This function read the Wildfinder data files (csv files).
#' 
#' @return This function returns a list containing the datasets (`tibble`).
#' 
#' @export
#' 

wildfinder_read = function() {
  # Path
  path = here::here("data", "wildfinder")
  filenames = c("wildfinder-ecoregions_list.csv", "wildfinder-ecoregions_species.csv", "wildfinder-mammals_list.csv")
  
  # Data
  list_data = list()
  
  for (filename in filenames) {
    dest_file = here::here(path, filename)

    list_data = c(list_data, 
                  list(readr::read_csv(file = dest_file)))
  }
  
  return(list_data)
}
