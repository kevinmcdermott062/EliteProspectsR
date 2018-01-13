#' EliteProspects Caller
#'
#' @param path Path Components of API call
#' @param params Filter or other parameters of API call
#'
#' @return The response from the API call built with path and params
eliteprospects_api <- function(path, params=list()) {
  params<-c(params, 'apikey'=get_api_key())
  path<-paste0("beta/", path)
  url <- httr::modify_url("http://api.eliteprospects.com/", path=path, query = params)
  httr::user_agent(get_user_agent())
  resp<-httr::GET(url)

  if(httr::http_type(resp) != "application/json") {
    stop("API did not return json", call. = FALSE)
  }

  parsed<-jsonlite::fromJSON(httr::content(resp, "text"), simplifyVector = FALSE)

  if (httr::http_error(resp)) {
    stop(
      sprintf(
        "EliteProspects API request failed [%s]\n%s\n<%s>",
        httr::status_code(resp),
        parsed$message,
        parsed$documentation_url
      ),
      call. = FALSE
    )
  }

  if('status' %in% parsed && parsed$status == 'error'){
    stop(cat("API provided error(s):", parsed$messages[[1]], sep="\n"), call. = FALSE)
  }

  structure(list(content = parsed, path=path, response = resp), class = "eliteprospects_api")
}

print.eliteprospects_api <- function(x, ...) {
  cat("<EliteProspects ", x$path, ">\n", sep="")
  utils::str(x$content)
  invisible(x)
}

#' Process Filters
#'
#' @param filters The filter(s) to process
#'
#' @return properly formatted filter(s)
process_filters<-function(filters){
  filters
}

#' Process sorts
#'
#' @param sorts The sort(s) to process
#'
#' @return properly formatted sort(s)
process_sorts<-function(sorts){
  sorts
}
