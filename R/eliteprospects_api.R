#Specific user agent
ua<-httr::user_agent("http://github.com/pbulsink/PliteProspectsR")

#API Key
api_key<-'12345'

#Internal API Caller & Parser
eliteprospects_api <- function(path, params=list()) {
  params<-c(params, 'apikey'=api_key)
  url <- httr::modify_url("http://api.eliteprospects.com/beta/", path=path, query =  params)
  resp<-httr::GET(url)

  if(httr::http_type(resp) != "application/json") {
    stop("API did not return json", call. = FALSE)
  }

  parsed<-jsonlite::fromJSON(httr::content(resp, "text"), simplifyVector = FALSE)

  if (http_error(resp)) {
    stop(
      sprintf(
        "EliteProspects API request failed [%s]\n%s\n<%s>",
        status_code(resp),
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

#Internal print coverage
print.eliteprospects_api <- function(x, ...) {
  cat("<EliteProspects ", x$path, ">\n", sep="")
  str(x$content)
  invisible(x)
}



