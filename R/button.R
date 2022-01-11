#' Fomantic UI Button
#'
#' @description
#' Creates a button specifically for Fomantic UI forms in order to check all inputs meet validation rules
#'
#' @param input_id The input slot that will be used to access the value
#' @param label The contents of the button, can either be character string or HTML tags
#' @param icon An optional \code{\link[shiny.semantic]{icon}} to appear on the button
#' @param width Width of the input
#' @param ... Named attributes to be applied to the button or remaining parameters passed to button, like \code{class}
#'
#' @seealso \code{\link{form_validation}}, \code{\link[shiny.semantic]{action_button}}
#' @export
form_button <- function(input_id, label, icon = NULL, width = NULL, ...) {
  extra_args <- list(...)
  if ("class" %in% extra_args) {
    class <- paste("form-button", extra_args$class)
  } else {
    class <- "form-button"
  }
  shiny.semantic::action_button(input_id, label, icon = NULL, width = NULL, class = class, ...)
}
