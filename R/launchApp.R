#' Launch App
#'
#' This function launches the shiny application.
#'
#' @param appDir Path to system.file app assets
#' @return shiny app url
#' @export
runApp <- function() {
  appDir <- system.file("app", package = "deseq2shiny")
  if (appDir == "") {
    stop("Could not find app directory. Try re-installing `deseq2shiny`.", call. = FALSE)
  }

  shiny::runApp(appDir, display.mode = "normal")
}
