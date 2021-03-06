#' List Grouped Stats
#'
#' @param filters Any filters to apply
#' @param sorts Any sorting to apply to results
#' @param fields Specific fields to retrieve
#' @param limit Maximum number of results returned
#' @param offset Offset of returned results
#'
#' @return The stats grouped from the API
#' @export
listGroupedStats <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_list(path="playerstats/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}
