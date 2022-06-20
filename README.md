
<!-- README.md is generated from README.Rmd. Please edit that file -->

# bytetrunc

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experimental)
[![R-CMD-check](https://github.com/shunsambongi/r-bytetrunc/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/shunsambongi/r-bytetrunc/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

Truncate text data by bytesize, rather than character count.

## Installation

You can install the development version of bytetrunc like so:

``` r
remotes::install_github("shunsambongi/r-bytetrunc")
```

## Example

``` r
library(bytetrunc)
byte_trunc("hello world", 5)
#> [1] "hello"
```
