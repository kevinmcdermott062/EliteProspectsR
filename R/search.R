#' Search for an item in EliteProspects
#'
#' @param query The query you wish to search for
#' @param types Any type of record to limit search to (eg. player, staff) as vector
#' @param filters Any filters to apply
#' @param sorts Any sorting to apply to results
#' @param fields Specific fields to retrieve as vector
#' @param limit Maximum number of results returned
#' @param offset Offset of returned results
#' @param minScore Minimum search score for returned results.
#'
#' @return The search results
#' @export
search_EP <- function(query=NULL, types = NULL, filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0, minScore=0){
  if(is.null(query)){
    stop("Please enter a query to search")
  }
  return(simple_search(path="search/", query=query, types = types, filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset, minScore=minScore))
}
