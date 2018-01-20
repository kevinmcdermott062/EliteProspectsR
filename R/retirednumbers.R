#' List Retired Numbers
#'
#' @param filters Any filters to apply
#' @param sorts Any sorting to apply to results
#' @param fields Specific fields to retrieve
#' @param limit Maximum number of results returned
#' @param offset Offset of returned results
#'
#' @return The retired numbers from the API
#' @export
listRetiredNumbers <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_list(path="retirednumbers/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

#' Get a specific Retired Number Entry
#'
#' @param id The retired number entry ID to get
#' @param filters Any filters to apply
#' @param sorts Any sorting to apply to results
#' @param fields Specific fields to retrieve
#' @param limit Maximum number of results returned
#' @param offset Offset of returned results
#'
#' @return The retired number entry from the API
#' @export
getRetiredNumber <- function(id=NULL, filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  if(!is.numeric(id)){
    stop("Please enter a retired number id to get")
  }
  return(simple_get(path="retirednumbers/", id=id, filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}
