filter.xts  <- function(.data, ...) {
  assertthat::assert_that(is.xts(.data))
  signature <- timetk::tk_get_timeseries_signature(index(.data))
  browser()
  signature %>% filter(...)
}

timetk::tk_get_timeseries_signature(index(sample.xts))

index(sample.xts)
sample.xts %>% filter(month == 4)
filter

x <- 1:100
filter(x, rep(1, 3))
filter(x, rep(1, 3), sides = 1)
filter(x, rep(1, 3), sides = 1, circular = TRUE)

filter(presidents, rep(1, 3))
