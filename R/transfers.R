#' List Transfers
#'
#' @param filters Any filters to apply
#' @param sorts Any sorting to apply to results
#' @param fields Specific fields to retrieve
#' @param limit Maximum number of results returned
#' @param offset Offset of returned results
#'
#' @return The full list of transfers from the API
#' @export
listTransfers <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_list(path="transfers/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

#' Get a specific Transfer Entry
#'
#' @param id The transfer entry ID to get
#' @param filters Any filters to apply
#' @param sorts Any sorting to apply to results
#' @param fields Specific fields to retrieve
#' @param limit Maximum number of results returned
#' @param offset Offset of returned results
#'
#' @return The retired number entry from the API
#' @export
getTransfer <- function(id=NULL, filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  if(!is.numeric(id)){
    stop("Please enter a transfer id to get")
  }
  return(simple_get(path="transfers/", id=id, filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}
