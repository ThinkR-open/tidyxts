context("test-slice.R")


test_that("slice ok", {
  library(xts)
  data(sample_matrix)
  sample.xts <- as.xts(sample_matrix, descr='my new xts object')
  expect_equal(dim(sample.xts), c(180,4))
  expect_is(sample.xts %>% slice(1),"xts")
  expect_is(sample.xts %>% slice(c(1,2)),"xts")
  expect_equal(sample.xts %>% slice(c(1,3)) %>% names(),c("Open", "High", "Low", "Close"))
  expect_equal_to_reference(sample.xts %>% slice(c(1,3)),"slice.test")
})
