#' Download PanTHERIA dataset
#' 
#' @description 
#' This function downloads the PanTHERIA dataset (text file) hosted on the 
#' GitHub repository <https://github.com/rdatatoolbox/datarepo/>.
#' The file `PanTHERIA_1-0_WR05_Aug2008.txt` will be stored in 
#' `data/pantheria/`. This folder will be created if required.
#' 
#' @return This function returns the path (`character`) to the downloaded file
#' (e.g. `data/pantheria/PanTHERIA_1-0_WR05_Aug2008.txt`).
#' 
#' @export
#' 

dl_pantheria_data = function() {
  path = here::here("data", "pantheria")
  
  # Create directory
  dir.create(path)
  
  # Download data
  base_url = "https://raw.githubusercontent.com/rdatatoolbox/datarepo/main/data/pantheria/"
  filename = "PanTHERIA_1-0_WR05_Aug2008.txt"
  
  final_url = paste0(base_url, filename)
  dest_file = here::here(path, filename)
  
  utils::download.file(url = final_url, 
                       destfile = dest_file,
                       mode     = "wb")
  
  return(dest_file)
  
}