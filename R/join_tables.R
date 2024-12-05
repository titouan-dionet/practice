#' Join tables
#' 
#' @description 
#' This function join the tables on Ursidae data.
#' 
#' @return This function returns a data.table which contains all informations 
#' on the Usidae family (`data.table`).
#' 
#' @export
#' 

join_tables = function(data_ursidae, data_ecoregions, data_ecor_spec) {
  data.table::setDT(data_ursidae)
  data.table::setDT(data_ecoregions)
  data.table::setDT(data_ecor_spec)
  
  return(
    data_ursidae[data_ecor_spec, on = "species_id", nomatch = FALSE][data_ecoregions, on = "ecoregion_id", nomatch = FALSE]
  )
}
