#' Fomantic UI Button
#'
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
