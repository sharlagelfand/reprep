
<!-- README.md is generated from README.Rmd. Please edit that file -->

# reprep

<!-- badges: start -->

<!-- badges: end -->

reprep helps automate the creation of a **rep**etitive **rep**orting
package.

## Installation

Install the development version from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("sharlagelfand/reprep")
```

## Usage

`reprep` functions are wrappers for [`usethis`
package](https://github.com/r-lib/usethis) functions and as such, also
operate on the active project. If you used `reprep` to create a new
package, that is the active project.

The following shows how `reprep` can help create your own package for
repetitive
reporting.

``` r
# Create a new package ---------------------------------------------------------
reprep::reprep("~/ttcreport/")
#> ✔ Setting active project to '/Users/sharla/ttcreport'
#> ✔ Creating 'R/'
#> ✔ Leaving 'DESCRIPTION' unchanged
#> Package: ttcreport
#> Title: What the Package Does (One Line, Title Case)
#> Version: 0.0.0.9000
#> Authors@R (parsed):
#>     * First Last <first.last@example.com> [aut, cre] (<https://orcid.org/YOUR-ORCID-ID>)
#> Description: What the package does (one paragraph).
#> License: What license it uses
#> Encoding: UTF-8
#> LazyData: true
#> ✔ Setting active project to '<no active project>'
```

``` r
# Add a step to the package ----------------------------------------------------
# (e.g. querying data, cleaning data, report writeup)
reprep::step("query_data")
#> ✔ Setting active project to '/Users/sharla/ttcreport'
#> ✔ Writing 'R/query_data.R'
#> ● Edit 'R/query_data.R'
#> ✔ Creating 'inst/templates/'
#> ● Edit 'inst/templates/query_data.R'
```
