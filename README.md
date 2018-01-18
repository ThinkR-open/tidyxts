
<!-- README.md is generated from README.Rmd. Please edit that file -->
tidyxts
=======

The goal of {tidyxts} is to allow user to use some tools from {dplyr} on xts (<https://github.com/joshuaulrich/xts>)

Installation
------------

You can install tidyxts from github with:

``` r
# install.packages("devtools")
devtools::install_github("ThinkR-open/tidyxts")
```

Example
-------

``` r
library(xts)
library(tidyxts)
data(sample_matrix)
sample.xts <- as.xts(sample_matrix, descr='my new xts object')
sample.xts %>% select(Open,Close) %>% head()
#>                Open    Close
#> 2007-01-02 50.03978 50.11778
#> 2007-01-03 50.23050 50.39767
#> 2007-01-04 50.42096 50.33236
#> 2007-01-05 50.37347 50.33459
#> 2007-01-06 50.24433 50.18112
#> 2007-01-07 50.13211 49.99185
sample.xts %>% select(1,3) %>% head()
#>                Open      Low
#> 2007-01-02 50.03978 49.95041
#> 2007-01-03 50.23050 50.23050
#> 2007-01-04 50.42096 50.26414
#> 2007-01-05 50.37347 50.22103
#> 2007-01-06 50.24433 50.11121
#> 2007-01-07 50.13211 49.99185
sample.xts %>% slice(c(1,3)) %>% head()
#>                Open     High      Low    Close
#> 2007-01-02 50.03978 50.11778 49.95041 50.11778
#> 2007-01-04 50.42096 50.42096 50.26414 50.33236
```
