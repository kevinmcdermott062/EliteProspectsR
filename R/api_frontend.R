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

#' Get Grouped Stats
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

#' List Leagues
#'
#' @param filters Any filters to apply
#' @param sorts Any sorting to apply to results
#' @param fields Specific fields to retrieve
#' @param limit Maximum number of results returned
#' @param offset Offset of returned results
#'
#' @return The leagues from the API
#' @export
listLeagues <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_list(path="leagues/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

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

#' List Teams
#'
#' @param filters Any filters to apply
#' @param sorts Any sorting to apply to results
#' @param fields Specific fields to retrieve
#' @param limit Maximum number of results returned
#' @param offset Offset of returned results
#'
#' @return The teams from the API
#' @export
listTeams <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_list(path="teams/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

#' List Staff
#'
#' @param filters Any filters to apply
#' @param sorts Any sorting to apply to results
#' @param fields Specific fields to retrieve
#' @param limit Maximum number of results returned
#' @param offset Offset of returned results
#'
#' @return The staff from the API
#' @export
listStaff <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_list(path="staff/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

#' List Arenas
#'
#' @param filters Any filters to apply
#' @param sorts Any sorting to apply to results
#' @param fields Specific fields to retrieve
#' @param limit Maximum number of results returned
#' @param offset Offset of returned results
#'
#' @return The arenas from the API
#' @export
listArenas <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_list(path="arenas/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

#' List Seasons
#'
#' @param filters Any filters to apply
#' @param sorts Any sorting to apply to results
#' @param fields Specific fields to retrieve
#' @param limit Maximum number of results returned
#' @param offset Offset of returned results
#'
#' @return The seasons from the API
#' @export
listSeasons <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_list(path="seasons/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

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

#' List Countries
#'
#' @param filters Any filters to apply
#' @param sorts Any sorting to apply to results
#' @param fields Specific fields to retrieve
#' @param limit Maximum number of results returned
#' @param offset Offset of returned results
#'
#' @return The countries from the API
#' @export
listCountries <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_list(path="countries/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

#' List Localities
#'
#' @param filters Any filters to apply
#' @param sorts Any sorting to apply to results
#' @param fields Specific fields to retrieve
#' @param limit Maximum number of results returned
#' @param offset Offset of returned results
#'
#' @return The localities from the API
#' @export
listLocalities <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_list(path="localities/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

#' List Awards
#'
#' @param filters Any filters to apply
#' @param sorts Any sorting to apply to results
#' @param fields Specific fields to retrieve
#' @param limit Maximum number of results returned
#' @param offset Offset of returned results
#'
#' @return The awards from the API
#' @export
listAwards <- function(filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(simple_list(path="awards/", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

#' Get Player Social Media
#'
#' @param player_id Player whos stats you wish to pull
#' @param filters Any filters to apply
#' @param sorts Any sorting to apply to results
#' @param fields Specific fields to retrieve
#' @param limit Maximum number of results returned
#' @param offset Offset of returned results
#'
#' @return The players stats from the API
#' @export
getPlayerSocialMedia <- function(player_id=NULL, filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(layered_get(family="player", id=player_id, item="medialinks", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

#' Get Player Game Status
#'
#' @param player_id Player whos stats you wish to pull
#' @param filters Any filters to apply
#' @param sorts Any sorting to apply to results
#' @param fields Specific fields to retrieve
#' @param limit Maximum number of results returned
#' @param offset Offset of returned results
#'
#' @return The players stats from the API
#' @export
getPlayerGameStatus <- function(player_id=NULL, filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(layered_get(family="player", id=player_id, item="playergamestatus", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

#' Get Player Stats
#'
#' @param player_id Player whos stats you wish to pull
#' @param filters Any filters to apply
#' @param sorts Any sorting to apply to results
#' @param fields Specific fields to retrieve
#' @param limit Maximum number of results returned
#' @param offset Offset of returned results
#'
#' @return The players stats from the API
#' @export
getPlayerStats <- function(player_id=NULL, filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(layered_get(family="player", id=player_id, item="stats", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

#' Get Player Profile
#'
#' @param player_id Player whos stats you wish to pull
#' @param filters Any filters to apply
#' @param sorts Any sorting to apply to results
#' @param fields Specific fields to retrieve
#' @param limit Maximum number of results returned
#' @param offset Offset of returned results
#'
#' @return The players stats from the API
#' @export
getPlayerProfile <- function(player_id=NULL, filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(layered_get(family="player", id=player_id, item="profile", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

#' Get Player Family
#'
#' @param player_id Player whos stats you wish to pull
#' @param filters Any filters to apply
#' @param sorts Any sorting to apply to results
#' @param fields Specific fields to retrieve
#' @param limit Maximum number of results returned
#' @param offset Offset of returned results
#'
#' @return The players stats from the API
#' @export
getPlayerFamily <- function(player_id=NULL, filters=NULL, sorts=NULL, fields=NULL, limit=0, offset=0){
  return(layered_get(family="player", id=player_id, item="familyrelations", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}

