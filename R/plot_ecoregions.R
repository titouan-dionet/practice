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
#' @import ggplot2
#' 

count_ecoregions = function(data) {
  data.table::setDT(data)
  data[, .(occurences = .N), by = sci_name]
}

plot_ecoregions = function(data) {
  
  PLOT = ggplot(data) +
    aes(x = sci_name, y = occurences) +
    geom_point() +
    labs(x = "Species", 
         y = "Occurences") +
    theme_bw()
  
  return(PLOT)
}