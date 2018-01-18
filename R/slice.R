#' @export
slice <- dplyr:::slice

#' @export
slice.xts  <- dplyr:::slice.data.frame

# sample.xts %>% slice(3)
# sample.xts %>% slice()
