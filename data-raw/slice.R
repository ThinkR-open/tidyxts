slice


data(sample_matrix)
sample.xts <- as.xts(sample_matrix, descr='my new xts object')
sample.xts %>% select(Open,Close)
sample.xts %>% slice(4)

methods("slice")
tidyxts:::sl
