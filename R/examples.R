#' Run Fomantic Plus Examples
#'
#' @param example The name of the example to run, or \code{NA} (the default) to list the available examples.
#' @param port The TCP port that the application should listen on. If the port is not specified, and the shiny.port option is set (with options(shiny.port = XX)), then that port will be used. Otherwise, use a random port between 3000:8000, excluding ports that are blocked by Google Chrome for being considered unsafe: 3659, 4045, 5060, 5061, 6000, 6566, 6665:6669 and 6697. Up to twenty random ports will be tried.
#' @param launch.browser If true, the system's default web browser will be launched automatically after the app is started. Defaults to true in interactive sessions only.
#' @param host The IPv4 address that the application should listen on. Defaults to the shiny.host option, if set, or "127.0.0.1" if not.
#' @param display.mode The mode in which to display the example. Defaults to \code{showcase}, but may be set to normal to see the example without code or commentary.
#'
#' @return
#' If \code{example = NA} then a list of the available examples will be shown, otherwise the selected
#' application will be rendered.
#'
#' @examples
#' if (interactive()) {
#'   runFPlusExample()
#'
#'   # Fomantic UI Kitchen Sink
#'   runKitchenSink()
#' }
#'
#' @seealso \code{\link[shiny]{runExample}}
#'
#' @rdname runExample
#' @export
runFPlusExample <- function(example = NA, port = getOption("shiny.port"),
                            launch.browser = getOption("shiny.launch.browser", interactive()),
                            host = getOption("shiny.host", "127.0.0.1"),
                            display.mode = c("auto", "normal", "showcase")) {
  examples_dir <- system.file("examples", package = "fomantic.plus")
  example_dir <- normalizePath(file.path(examples_dir, example), winslash = "/")
  if (!file.exists(example_dir)) example_dir <- NULL

  if (is.null(example_dir)) {
    if (is.na(example)) {
      errFun <- message
      errMsg <- ""
    }
    else {
      errFun <- stop
      errMsg <- paste("Example", example, "does not exist. ")
    }
    errFun(errMsg, "Valid examples are \"", paste(list.files(examples_dir), collapse = "\", \""), "\"")
  } else {
    shiny::runApp(
      example_dir,
      port = port,
      host = host,
      launch.browser = launch.browser,
      display.mode = display.mode
    )
  }
}
