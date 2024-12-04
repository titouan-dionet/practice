#' Select Usidae data
#' 
#' @description 
#' This function select only Ursidae data the Wildfinder species dataset.
#' 
#' @return This function returns a data.table which contains only species 
#' from the Usidae family (`data.table`).
#' 
#' @export
#' 

select_ursidae = function(data) {
  data = data |> as.data.table()
  return(data[family == "Ursidae"])
}
