devtools::load_all(".")
library(xts)
data("sample_matrix")
sample.xts <- as.xts(sample_matrix, descr='my new xts object')
sample.xts %>% select(Open,Close)
sample.xts %>% slice(4)
sample.xts["2007"]
sample.xts["2007-06"]
sample.xts["2007/"]


sample.xts %>% filter.xts("2007-06-27")
sample.xts %>% filter.xts("2007-06")
sample.xts %>% filter.xts("2007")
sample.xts %>% filter.xts("000")


# travail sur index
sample.xts %>% filter.xts(index < today())




# timetk::tk_get_timeseries_signature(index(sample.xts))
#
# index(sample.xts)
sample.xts %>% filter(month == 4)
# filter
#
# x <- 1:100
# filter(x, rep(1, 3))
# filter(x, rep(1, 3), sides = 1)
# filter(x, rep(1, 3), sides = 1, circular = TRUE)
#
# filter(presidents, rep(1, 3))
