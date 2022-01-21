#' Invert Toggle
#'
#' @description
#' Add a toggle to the shiny application that triggers all Fomantic UI elements to become "inverted"
#'
#' @param label Labels to add before and after the toggle. By default "Dark Mode" will appear after
#' the toggle
#' @param ... Tag attributes (named arguments) and children (unnamed arguments)
#' @param checked Should the application start off in dark mode?
#'
#' @return
#' A \code{shiny.tag} that will provide a toggle style checkbox in the UI of a shiny application.
#'
#' @details
#' To prevent elements from becoming inverted/removing their inverted state, include \code{keep-inverted-state} to
#' maintain them in either standard or inverted.
#'
#' @examples
#' if (interactive()) {
#'   library(shiny)
#'   library(shiny.semantic)
#'   ui <- semanticPage(
#'     extendShinySemantic(),
#'     fui_el$grid(
#'       fui_el$row(
#'         class = "two column",
#'         fui_el$column(
#'           fui_el$segment(
#'             class = "purple",
#'             darkmode_toggle()
#'           )
#'         ),
#'         fui_el$column(
#'           fui_el$segment(
#'             class = "red keep-inverted-state"
#'           )
#'         )
#'       )
#'     ),
#'     fui_el$cards(
#'       class = "two",
#'       fui_el$card(),
#'       fui_el$card()
#'     )
#'   )
#'
#'   server <- function(input, output, session) {}
#'
#'   shiny::shinyApp(ui, server)
#' }
#'
#' @export
darkmode_toggle <- function(label = "Dark Mode", ..., checked = FALSE) {
  if (isTRUE(checked)) {
    checked_attr <- "checked"
  } else {
    checked_attr <- NULL
  }

  fui_el$form(
    fui_el$field(
      div(
        class = "ui toggle checkbox invert-toggle",
        ...,
        tags$input(type = "checkbox", checked = checked_attr),
        tags$label(label)
      )
    )
  )
}
