## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----library-------------------------------------------------------------
library(EliteProspectsR)

## ----playerstats---------------------------------------------------------
gretzky <- getPlayerStats(player_id = 9678)

## ----search_player-------------------------------------------------------
players_search<-search_EP
url<-"http://api.eliteprospects.com/beta/search?type=player&q=Sidney Crosby&filter=latestPlayerStats.league.id=7"

## ----search_player_filter------------------------------------------------
url<-"http://api.eliteprospects.com/beta/search?type=player&q=Corey Perry&filter=latestPlayerStats.league.id=7&yearOfBirth=1985"

## ----transfers-----------------------------------------------------------
transfers<-listTransfers(filters = list("transferProbability"="CONFIRMED", "transferType"="TRANSFER"), sorts = list("transferDate"="desc", "id"="desc"))

