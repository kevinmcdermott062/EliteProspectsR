## ----setup, include = FALSE----------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----top_5---------------------------------------------------------------
url<-"http://api.eliteprospects.com/beta/playerstats?filter=league.id%3D7%26season.id%3D176%26gameType%3DREGULAR_SEASON&sort=TP%3Adesc&limit=5"

