#' Set the User Agent String
#'
#' @description Set a User Agent string to notify EliteProspects what service is using the API.
#' Defaults to "EliteProspects R API http://github.com/pbulsink/EliteProspectsR".
#'
#' @param ua The User Agent string to use for API calls. Default is "EliteProspects R API http://github.com/pbulsink/EliteProspectsR"
#'
#' @export
#'
#' @example
#' set_user_agent("EliteProspects R API http://github.com/pbulsink/EliteProspectsR")
set_user_agent <- function(ua="EliteProspects R API http://github.com/pbulsink/EliteProspectsR"){
  if(is.null(ua) || is.na(ua) || nchar(ua) == 0 || !is.character(ua))
    stop("User Agent must be a string of length > 0", call. = FALSE)
  Sys.setenv('ELITEPROSPECTS_UA' = ua)
}

#' Get the User Agent String
#'
#' @description Get the set User Agent string for building calls.
#'
#' @return the user agent string. Set the httr::user_agent with this string
#'
#' @export
#'
#' @example
#' httr::user_agent(get_user_agent())
get_user_agent <- function(){
  ua<-Sys.getenv('ELITEPROSPECTS_UA')
  if(ua == ""){
    ua<-"EliteProspects R API http://github.com/pbulsink/EliteProspectsR"
    set_user_agent(ua)
  }
  ua
}


#' EliteProspects Caller
#'
#' @param path Path Components of API call
#' @param params Filter or other parameters of API call
#'
#' @return The response from the API call built with path and params
eliteprospects_api <- function(path, params=list()) {
  params<-c(params, 'apikey'=get_api_key())
  url <- httr::modify_url("http://api.eliteprospects.com/beta/", path=path, query = params)
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

  if(parsed$status == 'error'){
    stop(cat("API provided error(s):", parsed$messages[[1]], sep="\n"), call. = FALSE)
  }

  structure(list(content = parsed, path=path, response = resp), class = "eliteprospects_api")
}

print.eliteprospects_api <- function(x, ...) {
  cat("<EliteProspects ", x$path, ">\n", sep="")
  utils::str(x$content)
  invisible(x)
}



