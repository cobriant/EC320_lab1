K02 <- read_file("../../R/K02_pipe.R")

test_that("K02: Question 1", {
  skip_incomplete(K02, 1)
  expect_true(
    str_detect(str_match_q(K02, 1)[[1]], "\\) %>% sum\\(\\)")
  )
})

test_that("K02: Question 2", {
  skip_incomplete(K02, 2)
  expect_true(all(c(
    str_detect(str_match_q(K02, 2)[[1]], "sort\\(\\) %>%"),
    str_detect(str_match_q(K02, 2)[[1]], "rep\\(2\\)")
  )))
})

test_that("K02: Question 3", {
  skip_incomplete(K02, 3)
  expect_true(all(c(
    str_detect(str_match_q(K02, 3)[[1]], "prod\\(\\)"),
    str_detect(str_match_q(K02, 3)[[1]], "seq\\(0, to = ., by = 5\\)")
  )))
})
