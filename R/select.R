#' Title
#'
#' @param .data
#' @param ...
#' @importFrom dplyr select
#' @export
#'
select <- function (.data, ...)
{
  dplyr::select(.data,...)
}

#' Select variables by name on xts
#'
#' @param .data
#' @param ...
#'
#' @return
#' @export
#' @import tidyselect
#' @import dplyr
#'
#' @examples
#' library(xts)
#' data(sample_matrix)
#' sample.xts <- as.xts(sample_matrix, descr='my new xts object')
#' sample.xts %>% select(Open,Close)
#'
select.xts <- function(.data, ...) {
  # vars <- tidyselect::vars_select(names(.data),...)
  vars <- dplyr::select_vars(names(.data),...)
  .data[,vars]
}

#
# library(xts)
# data(sample_matrix)
# sample.xts <- as.xts(sample_matrix, descr='my new xts object')
# sample.xts %>% select(Open,Close)
# names(sample.xts)<-NULL
# sample.xts %>% select(-1)
# iris %>% select(1)
