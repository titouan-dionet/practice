#' Select Usidae data
#' 
#' @description 
#' This function select only Ursidae data the Wildfinder species dataset.
#' 
#' @return This function returns a list containing the dataset (`data.table`).
#' 
#' @export
#' 

select_ursidae = function() {
  data = wildfinder_list[[3]] |> as.data.table()
  return(data[family == "Ursidae"])
}
