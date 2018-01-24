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

test_that("Param Processes are Ok", {
  expect_equal(process_filters(filters = list("a"="alice")), list("filter"="a%3Dalice"))
  expect_equal(process_filters(filters = list("a"="alice", "b" = "bob")), list("filter"="(a%3Dalice%26b%3Dbob)"))
  expect_equal(process_sorts(sorts = list("a"="asc")), list("sort"="a:asc"))
  expect_equal(process_sorts(sorts = list("a"="asc", "b" = "desc")), list("sort"="a:asc,b:desc"))
  expect_equal(process_fields(fields=c("a","b")), list("fields"="a,b"))
  expect_equal(process_limit(limit = 4), list("limit" = 4))
  expect_equal(process_offset(offset = 4), list("offset" = 4))
})
