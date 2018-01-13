#testthat

context("Testing api caller frontend")

test_that("getPlayer works", {
  expect_error(getPlayerData(), "Please include a numerical player_id. To search for players, use searchPlayerID()")
  expect_error(getPlayerData("Bob"), "Please include a numerical player_id. To search for players, use searchPlayerID()")
})
