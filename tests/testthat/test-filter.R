context("test-filter.R")
test_that("slice ok", {
  library(xts)
  data(sample_matrix)
  sample.xts <- as.xts(sample_matrix, descr='my new xts object')
  expect_equal(dim(sample.xts), c(180,4))
  expect_is(sample.xts %>% filter(),"xts")
  expect_is(sample.xts %>% filter("0000"),"xts")
  expect_is(sample.xts %>% filter("2007"),"xts")
  expect_equal(sample.xts %>% filter("2007") %>% dim(),c(180,4))
  expect_equal(sample.xts %>% filter("2007-06") %>% dim(),c(30,4))

  expect_equal(sample.xts %>% filter("2007") %>% names(),c("Open", "High", "Low", "Close"))
  # expect_equal(sample.xts %>% filter("000") %>% names(),c("Open", "High", "Low", "Close"))

  expect_equal_to_reference(sample.xts%>% filter("2007"),"filter.test")
})
