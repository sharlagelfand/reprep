#' Create a repetitive reporting package
#'
#'
#' @description Creates an R package. Can be called on an existing project;
#'   you will be asked before any existing files are changed.
#'
#' @inheritParams usethis::create_package
#'
#' @return Path to the newly created project or package, invisibly.
#' @export
reprep <- function(path, fields = NULL, rstudio = rstudioapi::isAvailable(), open = interactive()) {
  usethis::create_package(path, fields, rstudio, open)
}
