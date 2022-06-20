#' Truncate a character string by bytesize.
#' @param string A character vector.
#' @param size Maximum bytesize of string.
#' @export
#' @examples
#' x <- "This string is moderately long"
#' byte_trunc(x, 20)
#'
#' y <- "こんにちは"
#' byte_trunc(y, 10)
byte_trunc <- function(string, size) {
  not_na <- !is.na(string)
  string[not_na] <- byte_trunc_(string[not_na], size)
  string
}
