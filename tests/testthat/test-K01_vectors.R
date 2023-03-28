K01 <- read_file("../../R/K01_vectors.R")

test_that("K01: Question 1", {
  skip_incomplete(K01, "01")
  expect_equal(parse_eval(str_match_q(K01, "01"))[1], 6)
})

test_that("K01: Question 2", {
  skip_incomplete(K01, 2)
  expect_equal(parse_eval(str_match_q(K01, 2))[3], "economics")
})

test_that("K01: Question 3", {
  skip_incomplete(K01, "3")
  expect_equal(parse_eval(str_match_q(K01, "3")), c(T, T, T))
})

test_that("K01: Question 4", {
  skip_incomplete(K01, "4")
  expect_equal(parse_eval(str_match_q(K01, "4")), T)
})

test_that("K01: Question 5", {
  skip_incomplete(K01, "5")
  expect_equal(parse_eval(str_match_q(K01, "5")), T)
})

test_that("K01: Question 6", {
  skip_incomplete(K01, "6")
  expect_equal(parse_eval(str_match_q(K01, "6")), c(T, T, T))
})

test_that("K01: Question 7", {
  skip_incomplete(K01, "7")
  expect_equal(parse_eval(str_match_q(K01, "7")), c(T, T, T))
})

test_that("K01: Question 8", {
  skip_incomplete(K01, 8)
  expect_equal(parse_eval(str_match_q(K01, 8)), T)
})

test_that("K01: Question 9", {
  skip_incomplete(K01, 9)
  expect_equal(parse_eval(str_match_q(K01, 9)), c(T, T, T))
})

test_that("K01: Question 10", {
  skip_incomplete(K01, 10)
  expect_equal(class(parse_eval(str_match_q(K01, 10))), "character")
})
