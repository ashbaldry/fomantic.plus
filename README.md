## `fomantic.plus`

<!-- badges: start -->
[![R-CMD-check](https://github.com/ashbaldry/fomantic.plus/workflows/R-CMD-check/badge.svg)](https://github.com/ashbaldry/fomantic.plus/actions)
<!-- badges: end -->

An extension to the [`shiny.semantic`](https://github.com/Appsilon/shiny.semantic/) package.

### Examples

- [Form Validation](https://github.com/ashbaldry/fomantic.plus/inst/examples/form_validation)
- [Navbar Page](https://github.com/ashbaldry/fomantic.plus/inst/examples/navbar_page)

### Notes on Contributing

When updating JS/CSS files, before pushing changes run the following chunks depending on the files updated:

```r
devtools::install_github("ashbaldry/minifier")

minifier::minifyJSDirectory(
  "inst/srcjs/full-fomantic", 
  single_file = TRUE,
  minified_dir_name = "inst/srcjs", 
  minified_file_name = "fomantic-plus.min.js"
)
minifier::minifyCSSDirectory(
  "inst/srcjs/full-fomantic", 
  single_file = TRUE,
  minified_dir_name = "inst/srcjs", 
  minified_file_name = "fomantic-plus.min.css"
)
```
