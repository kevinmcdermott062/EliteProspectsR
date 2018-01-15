#' Get A Player's Data
#'
#' @param player_id The player_id from Elite Prospects of the player you wish to retireve
#'
#' @return The player's information from Elite Prospects, filtered if appropriate
#' @export
getPlayerData <- function(player_id=NULL){
  if(!is.null(player_id) && is.numeric(player_id)){
    path <- paste0("players/", as.character(player_id))
  } else {
    stop("Please include a numerical player_id. To search for players, use searchPlayerID()")
  }
  result<-eliteprospects_api(path)
  return(result$content$data)
}

getPlayerStats <- function(player_id=NULL, filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  if(!is.null(player_id) && is.numeric(player_id)){
    path <- paste0("players/", as.character(player_id), "/stats")
  } else {
    stop("Please include a numerical player_id. To search for players, use searchPlayerID()")
  }
  params <- process_params(filters, sorts, fields, limit, offset)

  result<-eliteprospects_api(path, params)
  return(result$content$data)
}

getGroupedStats <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_get(path="playerstats/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

listTransfers <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_get(path="transfers/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

listLeagues <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_get(path="leagues/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

listDrafts <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_get(path="drafts/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

listTeams <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_get(path="teams/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

listStaff <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_get(path="staff/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

listArenas <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_get(path="arenas/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

listSeasons <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_get(path="seasons/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

listRetiredNumbers <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_get(path="retirednumbers/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

listCountries <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_get(path="countries/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

listLocalities <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_get(path="localities/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

listAwards <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_get(path="awards/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}
