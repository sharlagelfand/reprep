#' Create a .R file and template
#'
#' @param name File name, without extension; will create if it doesn't already exist.
#' @param ext An optional extension for the template file. Defaults to `R`
#'
#' @export
step <- function(name, ext = "R"){
  check_file_name(name)

  package_name <- fs:::path_file(usethis:::path_prep(usethis::proj_get()))
  usethis::use_template(template = "step",
                        save_as = usethis::proj_path("R", name, ext = "R"),
                        data = list(function_name = name,
                                    package_name = package_name),
                        open = TRUE,
                        package = "reprep")

  usethis::use_directory("inst/templates")
  usethis::edit_file(usethis::proj_path("inst/templates", name, ext = ext))
  invisible(TRUE)
}
