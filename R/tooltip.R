#' Create Fomantic UI Popup
#'
#' @description
#' Add a tooltip to an element that on hover will show extra information
#'
#' \code{addTooltip} will only use a basic CSS tooltip with a limited amount of functionality, whereas \code{addPopup}
#' is initialised with JS, and can include more functionality
#'
#' @param el A UI element that the tooltip will be applied to
#' @param text Contents of the tooltip. Can either be a character string or an HTML object
#' @param position (Optional) Force the popup to appear in a direction relative to \code{el}. Choose a vertical
#' position from \code{"top", "bottom", ""} and a horizontal from \code{"left", "center", "right", ""}
#' @param variation (Optional) Add certain features to the popup
#' \describe{
#' \item{\code{mini, tiny, small, medium, large, huge}}{Affect the size of the font in the popup}
#' \item{\code{basic}}{Removes the pointing arrow of the popup}
#' \item{\code{fixed, wide} (addPopup only)\code{, very wide} (addPopup only)}{Affect the width of the popup}
#' }
#' @param inverted Should the colours of the popup be inverted?
#' @param title (Optional) Add a title to the popup. Only appears when \code{html = FALSE}
#' @param offset (Optional) A numeric value of the number of pixel to offset the tooltip by
#' @param settings Named list of settings to be applied to the popup. Check Fomantic UI website for full list.
#' For example \code{list(on = "click")} will mean the popup appears on a click rather than a hover.
#' @param html Is \code{text} valid HTML code? Defaults to \code{FALSE}
#'
#' @seealso \url{https://fomantic-ui.com/modules/popup.html}
#'
#' @examples
#' addPopup(
#'   fui_el$label(id = "help_label", class = "small circular", "?"),
#'   "This can be used as a help icon in a shiny app",
#'   inverted = TRUE
#' )
#'
#' addTooltip(
#'   fui_el$label(class = "small circular", "?"),
#'   "This can be used as a help icon in a shiny app"
#' )
#'
#' @rdname popup
#' @export
addPopup <- function(el, text, position = NULL, variation = NULL, inverted = FALSE,
                     title = NULL, offset = NULL, settings = NULL, html = FALSE) {
  if (!inherits(el, "shiny.tag")) stop("el must be a shiny.tag")
  if (!"id" %in% names(el$attribs)) stop("addPopup requires HTML tag to have an id to run")

  if (html) {
    tooltip_attribute <- "data-html"
    text <- as.character(text)
  } else {
    tooltip_attribute <- "data-content"
  }

  el$attribs[[tooltip_attribute]] <- as.character(text)
  if (!is.null(title)) el <- htmltools::tagAppendAttributes(el, "data-title" = title)
  if (!is.null(position)) el <- htmltools::tagAppendAttributes(el, "data-position" = position)
  if (!is.null(variation)) el <- htmltools::tagAppendAttributes(el, "data-variation" = variation)
  if (!is.null(offset)) el <- htmltools::tagAppendAttributes(el, "data-offset" = as.character(offset))
  if (inverted) el <- htmltools::tagAppendAttributes(el, "data-inverted" = "")

  if (is.null(settings)) {
    settings_json <- ""
  } else {
    settings_json <- jsonlite::toJSON(settings, auto_unbox = TRUE)
  }

  tagList(
    el,
    tags$script(paste0("$('#", el$attribs$id, "').popup(", settings_json, ");"))
  )
}

#' @rdname popup
#' @export
addTooltip  <- function(el, text, position = NULL, variation = NULL, inverted = FALSE) {
  if (!inherits(el, "shiny.tag")) stop("el must be a shiny.tag")

  el <- htmltools::tagAppendAttributes(el, "data-tooltip" = as.character(text))
  if (!is.null(position)) el <- htmltools::tagAppendAttributes(el, "data-position" = position)
  if (!is.null(variation)) el <- htmltools::tagAppendAttributes(el, "data-variation" = variation)
  if (inverted) el <- htmltools::tagAppendAttributes(el, "data-inverted" = "")

  el
}
