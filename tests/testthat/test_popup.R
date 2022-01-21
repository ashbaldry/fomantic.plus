testthat::test_that("addTooltip fails when el is not a shiny.tag", {
  testthat::expect_error(addTooltip("test", "test"))
})

testthat::test_that("addTooltip works when el is a shiny.tag", {
  tooltip <- addTooltip(div(), "test")
  testthat::expect_s3_class(tooltip, class = "shiny.tag")
  testthat::expect_true("data-tooltip" %in% names(tooltip$attribs))
  testthat::expect_equal(tooltip$attribs$`data-tooltip`, "test")
})

testthat::test_that("addTooltip works with all extra settings", {
  tooltip <- addTooltip(div(), "test", position = "top left", variation = "small", inverted = TRUE)
  testthat::expect_true("data-position" %in% names(tooltip$attribs))
  testthat::expect_true("data-variation" %in% names(tooltip$attribs))
  testthat::expect_true("data-inverted" %in% names(tooltip$attribs))
  testthat::expect_equal(tooltip$attribs$`data-inverted`, "")
})

testthat::test_that("addPopup fails when el is not a shiny.tag", {
  testthat::expect_error(addPopup("test", "test"))
})

testthat::test_that("addPopup fails when el doesn't have an id attribute", {
  testthat::expect_error(addPopup(div(), "test"))
})

testthat::test_that("addPopup works when el is a shiny.tag with an element and a script", {
  tooltip <- addPopup(div(id = "test"), "test")
  testthat::expect_s3_class(tooltip, class = "shiny.tag.list")

  testthat::expect_s3_class(tooltip[[1]], class = "shiny.tag")
  testthat::expect_true("data-content" %in% names(tooltip[[1]]$attribs))
  testthat::expect_equal(tooltip[[1]]$attribs$`data-content`, "test")

  testthat::expect_s3_class(tooltip[[2]], class = "shiny.tag")
  testthat::expect_equal(tooltip[[2]]$name, "script")
})

testthat::test_that("addPopup works when el is a shiny.tag and text is HTML", {
  tooltip <- addPopup(div(id = "test"), div("Message"), html = TRUE)
  testthat::expect_s3_class(tooltip, class = "shiny.tag.list")

  testthat::expect_s3_class(tooltip[[1]], class = "shiny.tag")
  testthat::expect_true("data-html" %in% names(tooltip[[1]]$attribs))
  testthat::expect_equal(tooltip[[1]]$attribs$`data-html`, "<div>Message</div>")
})

testthat::test_that("addPopup works with all extra settings", {
  tooltip <- addPopup(
    div(id = "test"),
    "test",
    title = "Title",
    position = "top left",
    variation = "small",
    inverted = TRUE,
    offset = 50,
    settings = list(on = "click")
  )

  tag_attribs <- list()
  testthat::expect_true("data-position" %in% names(tooltip[[1]]$attribs))
  testthat::expect_true("data-variation" %in% names(tooltip[[1]]$attribs))
  testthat::expect_true("data-inverted" %in% names(tooltip[[1]]$attribs))
  testthat::expect_equal(tooltip[[1]]$attribs$`data-inverted`, "")
})
