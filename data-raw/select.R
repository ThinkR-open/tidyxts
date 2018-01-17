library(xts)
library(dplyr)
library(rlang)

data(sample_matrix)
sample.xts <- as.xts(sample_matrix, descr='my new xts object')
select.xts <- dplyr:::select.data.frame

sample.xts %>% select(Open,Close)
sample.xts %>% select(starts_with("O"))

# au dessus ca marche
# en dessous ca marche pas

select.xts <- function(.data, ...) {
  browser()
  vars <- dplyr:::select_vars(names(.data), !(!(!quos(...))))
  message("youpi")
  dplyr:::select_impl(.data, vars)
}

sample.xts %>% select(starts_with("O"))
#Error in !quos(...) : invalid argument type



sample.xts %>% select(Open,Close)
sample.xts %>% select.xts(Open,Close)
iris %>% select.xts(Open,Close)
iris %>% dplyr:::select.data.frame(Open,Close)
sample.xts %>% dplyr:::select.data.frame(Open,Close)

sample.xts %>% select(Open,Close)
sample.xts %>% select(starts_with("O"))

select.xts <- dplyr:::select.data.frame

methods(select)
dplyr:::select.data.frame


class(sample.xts)
str(sample.xts)

head(sample.xts)  # attribute 'descr' hidden from view
attr(sample.xts,'descr')
