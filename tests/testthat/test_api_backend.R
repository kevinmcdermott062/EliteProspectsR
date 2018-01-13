#testthat

context("Testing api caller frontend")

test_that("API Calls build ok",{
  ep<-eliteprospects_api(path='players/1')
  expect_equal(ep$path, 'beta/players/1')
  expect_equal(ep$response$status_code, 200)
  expect_equal(ep$content$data$firstName, 'Peder')

  expect_error(eliteprospects_api(""), "API Call requires character path")
  expect_error(eliteprospects_api(1234), "API Call requires character path")
  expect_error(eliteprospects_api("bob"), "EliteProspects API request failed \\(404\\)")
})
