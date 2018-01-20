#' List Drafts
#'
#' @param filters Any filters to apply
#' @param sorts Any sorting to apply to results
#' @param fields Specific fields to retrieve
#' @param limit Maximum number of results returned
#' @param offset Offset of returned results
#'
#' @return The drafts from the API
#' @export
listDrafts <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_list(path="drafts/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}
