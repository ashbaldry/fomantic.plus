testthat::test_that("extendShinySemantic contains required scripts", {
  scripts <- extendShinySemantic()
  testthat::expect_s3_class(scripts, "shiny.tag.list")
  tag_types <- vapply(scripts, function(x) x$name, character(1))

  testthat::expect_true("script" %in% tag_types)
  if ("script" %in% tag_types) {
    js_tag <- scripts[[which(tag_types == "script")]]
    testthat::expect_true("src" %in% names(js_tag$attribs))
  }

  testthat::expect_true("link" %in% tag_types)
  if ("link" %in% tag_types) {
    css_tag <- scripts[[which(tag_types == "link")]]
    testthat::expect_true(all(c("href", "rel", "type") %in% names(css_tag$attribs)))
  }
})
