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
  return(result$content)
}

