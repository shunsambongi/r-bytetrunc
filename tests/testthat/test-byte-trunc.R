test_that("ascii characters works", {
  bytesize <- 3
  truncated <- byte_trunc("hello", bytesize)
  expect_lte(stringi::stri_numbytes(truncated), bytesize)
  expect_equal(truncated, "hel")
})

test_that("multi-byte characters work", {
  bytesize <- 10
  truncated <- byte_trunc("こんにちは", bytesize)
  expect_lte(stringi::stri_numbytes(truncated), bytesize)
  expect_equal(truncated, "こんに")
})

test_that("NA is ignored", {
  expect_equal(byte_trunc(NA_character_, 3), NA_character_)
})

test_that("entire vectors work", {
  bytesize <- 3
  input <- c("hello", "こんにちは", NA_character_)
  truncated <- byte_trunc(input, bytesize)
  expect_true(all(stringi::stri_numbytes(truncated) <= bytesize, na.rm = TRUE))
  expect_equal(truncated, c("hel", "こ", NA_character_))
})
