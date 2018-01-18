context("test-select.R")

test_that("select ok", {
  library(xts)
  data(sample_matrix)
  sample.xts <- as.xts(sample_matrix, descr='my new xts object')

  expect_equal(dim(sample.xts), c(180,4))
  expect_is(sample.xts %>% select(Open,Close),"xts")
  expect_is(sample.xts %>% select(1,2),"xts")
  expect_is(sample.xts %>% select(c(1,2)),"xts")
  expect_equal(sample.xts %>% select(Open,Close) %>% names(),c("Open","Close"))
  expect_equal(sample.xts %>% select(1,2) %>% names(),c("Open","High"))
  expect_equal_to_reference(sample.xts %>% select(Open,Close),"sel.test")
  sample.xts %>% select(1,2) %>% names()
})
