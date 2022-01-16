testthat::test_that("fui_el contains a list of functions", {
  fui_el_classes <- vapply(fui_el, class, character(1))
  testthat::expect_true(all(fui_el_classes == "function"))
})

testthat::test_that("fui_el functions create HTML tags", {
  for (el in fui_el) {
    if (names(formals(el))[1] != "...") {
      html_tag <- el("name")
    } else {
      html_tag <- el()
    }

    testthat::expect_s3_class(html_tag, "shiny.tag")
  }
})
