#' @importFrom shiny tags div span tagList
#' @import shiny.semantic
NULL

#' Add \code{fomantic.plus} Dependencies to \code{shiny.semantic} Application
#'
#' @description
#' In order for any of the \code{fomantic.plus} functionality to work
#'
#' This will be automatically included in any \code{xxx_page} function in this package,
#' for example \code{\link{navbar_page}}.
#'
#' @examples
#' if (interactive()) {
#'   library(shiny)
#'   library(shiny.semantic)
#'   library(fomantic.plus)
#'
#'   ui <- semanticPage(
#'     title = "Hello Fomantic UI",
#'     tags$head(
#'       extendShinySemantic()
#'     )
#'   )
#' }
#'
#' @export
extendShinySemantic <- function() {
  shiny::addResourcePath("fomantic.plus", system.file("srcjs", package = "fomantic.plus"))

  shiny::tagList(
    tags$script(src = "fomantic.plus/fomantic-plus.min.js"),
    tags$link(rel = "stylesheet", type = "text/css", href = "fomantic.plus/fomantic-plus.min.css"),
    tags$script(src = "fomantic.plus/history.min.js")
  )
}
