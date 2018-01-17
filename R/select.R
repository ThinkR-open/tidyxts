#' Title
#'
#' @param .data
#' @param ...
#'
#' @export
#'
select <- function (.data, ...)
{
  UseMethod("select")
}

#' Select variables by name on xts
#'
#' @param .data
#' @param ...
#'
#' @return
#' @export
#'
#' @examples
#' library(xts)
#' data(sample_matrix)
#' sample.xts <- as.xts(sample_matrix, descr='my new xts object')
#' sample.xts %>% select(Open,Close)
#'
select.xts <- function(.data, ...) {
  vars <- tidyselect::vars_select(names(.data),...)
  .data[,vars]
}

