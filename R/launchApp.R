#' Launch App
#'
#' This function launches the shiny application.
#'
#' @param x Path to system.file app assets
#' @return shiny app url
#' @export
runApp <- function(x) {
  x <- system.file("app", package = "deseq2shiny")
  if (x == "") {
    stop("Could not find app directory. Try re-installing `deseq2shiny`.", call. = FALSE)
  }

  shiny::runApp(appDir = x, display.mode = "normal")
}
