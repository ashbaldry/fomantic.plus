## `fomantic.plus`

<!-- badges: start -->
[![R-CMD-check](https://github.com/ashbaldry/fomantic.plus/workflows/R-CMD-check/badge.svg)](https://github.com/ashbaldry/fomantic.plus/actions)
[![Codecov test coverage](https://codecov.io/gh/ashbaldry/fomantic.plus/branch/main/graph/badge.svg)](https://codecov.io/gh/ashbaldry/fomantic.plus?branch=main)
<!-- badges: end -->

<img src="man/figures/hexsticker.png" align="right" alt="Hex sticker of fomantic.plus package" width="130" />

`{fomantic.plus}` contains a series of functions that create elements and perform behaviours from [Fomantic UI](https://fomantic-ui.com/); the package works as an extension to the [`{shiny.semantic}`](https://github.com/Appsilon/shiny.semantic/) package.

### Form Validation

Input validation is an important part of shiny applications, and with `form_validation` you can have (the majority) of the validation done within the UI.

![](vignettes/invalid_inline_input.png)

### Navbar Page

Similar to `{shiny}`'s navbarPage, `{fomantic.plus}` includes the ability to create a page with a navbar, along with the options to show/hide tabs, and change to a specific tab on the server-side.

Bootstrap UI (`shiny`)             |  Fomantic UI (`fomantic.plus`)
:-------------------------:|:-------------------------:
![](man/figures/shiny_navbar_page.png)  |  ![](man/figures/fomantic_navbar_page.png)

### Dark Mode

Using `darkmode_toggle()` will include a toggle in the UI to enable all Fomantic UI elements to change into the "inverted" class, giving the ability to have a light and dark mode application

Light Mode            |  Dark Mode
:-------------------------:|:-------------------------:
![](man/figures/darkmode_light.jpg)  |  ![](man/figures/darkmode_dark.jpg)

## Installation

```r
devtools::install_github("ashbaldry/fomantic.plus")
```

## Examples

- [Form Validation](https://github.com/ashbaldry/fomantic.plus/inst/examples/form_validation)
- [Navbar Page](https://github.com/ashbaldry/fomantic.plus/inst/examples/navbar_page)
