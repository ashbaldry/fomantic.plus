#' Create Fomantic UI Elements
#'
#' @description
#' Create an R object that represents a Fomantic UI Element e.g. segment or container. The contents have remained
#' as minimal as possible to enable the greatest possible flexibility.
#'
#' @details
#' Most of the elements work just like a standard HTML tag with some pre-defined classes, however there are a few
#' elements which require a value, and so have an extra argument attached:
#'
#' \describe{
#' \item{\code{emoji}}{FUI Element: \code{emoji} - The string of the emoji name}
#' \item{\code{country}}{FUI Element: \code{flag} - Either the country name or 2 character ISO code}
#' \item{\code{icon}}{FUI Element: \code{icon} - The space separated name of the Font Awesome icon}
#' \item{\code{html_tag}}{FUI Elements: \code{header, list, item} - For certain elements, multiple HTML tags can be used.
#' The default is set to \code{div}, but can be set to any valid HTML tag.}
#' }
#'
#' @examples
#' # List
#' fui_el$list(
#'   fui_el$item("Item 1"),
#'   fui_el$item("Item 2"),
#'   fui_el$item("Item 3")
#' )
#'
#' # Pink Segment
#' fui_el$segment(
#'   class = "pink"
#' )
#'
#' # Grid
#' fui_el$grid(
#'   fui_el$row(
#'     class = "two column",
#'     fui_el$column(),
#'     fui_el$column()
#'   )
#' )
#'
#' # Flag
#' fui_el$flag("fr")
#'
#' # Icon
#' fui_el$icon("exclamation triangle")
#'
#' @seealso \url{https://fomantic-ui.com} for styling Fomantic UI elements, \code{\link[htmltools]{builder}}
#' @export
fui_el <- list()

fui_el$button <- function(...) {
  div(class = "ui button", ...)
}

fui_el$container <- function(...) {
  div(class = "ui container", ...)
}

fui_el$divider <- function(...) {
  div(class = "ui divider", ...)
}

fui_el$emoji <- function(emoji, ...) {
  tags$em("data-emoji" = emoji, ...)
}

fui_el$flag <- function(country, ...) {
  tags$i(class = paste(country, "flag"), ...)
}

fui_el$header <- function(..., html_tag = shiny::div) {
  html_tag(class = "ui header", ...)
}

fui_el$icon <- function(icon, ...) {
  tags$i(class = paste(icon, "icon"), ...)
}

fui_el$image <- function(...) {
  div(class = "ui image", ...)
}

fui_el$input <- function(...) {
  div(class = "ui input", ...)
}

fui_el$label <- function(...) {
  div(class = "ui label", ...)
}

fui_el$list <- function(..., html_tag = shiny::div) {
  html_tag(class = "ui list", ...)
}

fui_el$item <- function(..., html_tag = shiny::div) {
  html_tag(class = "item", ...)
}

fui_el$dimmer <- function(...) {
  div(class = "ui dimmer", ...)
}

fui_el$loader <- function(...) {
  div(class = "ui loader", ...)
}

fui_el$placeholder <- function(...) {
  div(class = "ui placeholder", ...)
}

fui_el$rail <- function(...) {
  div(class = "ui rail", ...)
}

fui_el$reveal <- function(...) {
  div(class = "ui reveal", ...)
}

fui_el$segment <- function(...) {
  div(class = "ui segment", ...)
}

fui_el$steps <- function(...) {
  div(class = "ui steps", ...)
}

fui_el$step <- function(...) {
  div(class = "step", ...)
}

fui_el$text <- function(...) {
  span(class = "ui text", ...)
}

fui_el$breadcrumb <- function(...) {
  div(class = "ui breadcrumb", ...)
}

fui_el$form <- function(...) {
  div(class = "ui form", ...)
}

fui_el$fields <- function(...) {
  div(class = "fields", ...)
}

fui_el$field <- function(...) {
  div(class = "field", ...)
}

fui_el$grid <- function(...) {
  div(class = "ui grid", ...)
}

fui_el$row <- function(...) {
  div(class = "row", ...)
}

fui_el$column <- function(...) {
  div(class = "column", ...)
}

fui_el$menu <- function(...) {
  div(class = "ui menu", ...)
}

fui_el$message <- function(...) {
  div(class = "ui message", ...)
}

fui_el$table <- function(...) {
  tags$table(class = "ui table", ...)
}

fui_el$advert <- function(...) {
  div(class = "ui ad", ...)
}

fui_el$cards <- function(...) {
  div(class = "ui cards", ...)
}

fui_el$card <- function(...) {
  div(class = "ui card", ...)
}

fui_el$comments <- function(...) {
  div(class = "ui comments", ...)
}

fui_el$comment <- function(...) {
  div(class = "ui comment", ...)
}

fui_el$feed <- function(...) {
  div(class = "ui feed", ...)
}

fui_el$event <- function(...) {
  div(class = "event", ...)
}

fui_el$items <- function(...) {
  div(class = "ui items", ...)
}

fui_el$statistics <- function(...) {
  div(class = "ui statistics", ...)
}

fui_el$statistic <- function(...) {
  div(class = "ui statistic", ...)
}

fui_el <- fui_el[sort(names(fui_el))]
