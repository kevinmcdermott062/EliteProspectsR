#' testthat

context("Testing api caller persistent")

test_that("UA Setter/Getter", {
  original_ua<-Sys.getenv("ELITEPROSPECTS_UA")
  default_ua<-"EliteProspects R API http://github.com/pbulsink/EliteProspectsR"

  test_ua<- "Test UA"
  set_user_agent(test_ua)
  expect_true(get_user_agent() == test_ua)
  set_user_agent()
  expect_true(get_user_agent() == default_ua)
  Sys.unsetenv("ELITEPROSPECTS_UA")
  expect_true(get_user_agent() == default_ua)

  expect_error(set_user_agent(NULL), "User Agent must be a string of length > 0")
  expect_error(set_user_agent(NA), "User Agent must be a string of length > 0")
  expect_error(set_user_agent(1234), "User Agent must be a string of length > 0")

  if(original_ua != ""){
    set_user_agent(original_ua)
  } else {
    set_user_agent()
  }

})

test_that("API Setter/Getter", {
  default_api<-"DEFAULT_API"

  test_api<- "TEST_API"
  tryCatch(
    original_api<-Sys.getenv("ELITEPROSPECTS_API"),
    error = message('No previously set API key'),
    finally = origninal_api<-default_api
  )

  set_api_key(test_api)
  expect_true(get_api_key() == test_api)
  set_api_key()
  expect_true(get_api_key() == default_api)
  Sys.unsetenv("ELITEPROSPECTS_API")
  expect_error(get_api_key(), "Please set your API key with set_api_key\\(\\[api_key_value\\]\\)")

  expect_error(set_api_key(NULL), "API must be alphanumeric string.")
  expect_error(set_api_key(NA), "API must be alphanumeric string.")
  expect_error(set_api_key(1234), "API must be alphanumeric string.")

  if(original_api == ""){
    set_api_key()
  } else {
    set_api_key(original_api)
  }

})
