testthat::test_that("darkmode_toggle creates a shiny.tag", {
  testthat::expect_s3_class(darkmode_toggle(), class = "shiny.tag")
})

testthat::test_that("darkmode_toggle can be set as toggled on start-up", {
  testthat::expect_success(darkmode_toggle(checked = TRUE))
})
