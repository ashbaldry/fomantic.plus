## `fomantic.plus`

<!-- badges: start -->
[![R-CMD-check](https://github.com/ashbaldry/fomantic.plus/workflows/R-CMD-check/badge.svg)](https://github.com/ashbaldry/fomantic.plus/actions)
[![Codecov test coverage](https://codecov.io/gh/ashbaldry/fomantic.plus/branch/main/graph/badge.svg)](https://codecov.io/gh/ashbaldry/fomantic.plus?branch=main)
<!-- badges: end -->

`{fomantic.plus}` contains a series of functions that create [Fomantic UI](https://fomantic-ui.com/) elements, and works as an extension to the [`{shiny.semantic}`](https://github.com/Appsilon/shiny.semantic/) package.

### Form Validation

Input validation is an important part of shiny applications, and with `form_validation` you can have (the majority) of the validation done within the UI.

![](vignettes/invalid_inline_input.png)

### Navbar Page

Similar to `{shiny}`'s navbarPage, `{fomantic.plus}` includes the ability to create a page with a navbar, along with the options to show/hide tabs, and change to a specific tab on the server-side.

Bootstrap UI (`shiny`)             |  Fomantic UI (`fomantic.plus`)
:-------------------------:|:-------------------------:
![](inst/assets/shiny_navbar_page.png)  |  ![](inst/assets/fomantic_navbar_page.png)

## Installation

```r
devtools::install_github("ashbaldry/fomantic.plus")
```

## Examples

- [Form Validation](https://github.com/ashbaldry/fomantic.plus/inst/examples/form_validation)
- [Navbar Page](https://github.com/ashbaldry/fomantic.plus/inst/examples/navbar_page)
