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
  return(layered_get(family="players", id=player_id, item="medialinks", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
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
  return(layered_get(family="players", id=player_id, item="playergamestatus", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
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
  return(layered_get(family="players", id=player_id, item="stats", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
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
  return(layered_get(family="players", id=player_id, item="profile", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
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
  return(layered_get(family="players", id=player_id, item="familyrelations", filters=filters, sorts=sorts, fields=fields, limit=limit, offset=offset))
}
