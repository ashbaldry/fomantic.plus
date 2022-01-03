#' Create Fomantic UI Grid
#'
#' @description
#'
#'
#' @param ... Other arguments to be added as attributes of the tag (e.g. style, class or childrens etc.)
#' @param class Additional classes to add to the grid elements
#'
#' @details
#' For a full list of classes to give to grid elements, visit
#' \url{https://fomantic-ui.com/collections/grid.html}
#'
#' @examples
#' # Simple two column grid
#' f_grid(
#'   f_row(
#'     class = "two column",
#'     f_column(),
#'     f_column()
#'   )
#' )
#'
#' @rdname fomantic_ui_grid
#' @export
f_grid <- function(..., class = "") {
  div(
    class = paste("ui", class, "grid"),
    ...
  )
}

#' @rdname fomantic_ui_grid
#' @export
f_row <- function(..., class = "") {
  div(
    class = paste(class, "row"),
    ...
  )
}

#' @rdname fomantic_ui_grid
#' @export
f_column <- function(..., class = "") {
  div(
    class = paste("column"),
    ...
  )
}
