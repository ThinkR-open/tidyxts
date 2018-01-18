#' @name slice
#' @rdname slice
#' @export
#' @importFrom dplyr slice
NULL

#' @rdname slice
#' @method slice xts
#' @S3method slice xts
slice.xts  <- function(.data,...){

  # res <- dplyr:::slice.data.frame(.data,...)
  # browser()
  .data[...,]
}


# sample.xts %>% slice(3)
# sample.xts %>% slice()
