#' Count ecoregions occurences
#' 
#' @description 
#' This function count the number of ecoregions where species are present.
#' 
#' @return This function returns a data.table which species names and number 
#' of ecoregions (`data.table`).
#' 
#' @export
#' 

count_ecoregions = function(data) {
  setDT(data)
  data[, .(occurences = .N), by = sci_name]
}