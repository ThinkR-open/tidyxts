#' @export
#' @rdname select
select <- function (.data, ...)
{
  dplyr::select(.data,...)
}

#' Select variables by name on xts
#'
#' @param .data an xts object
#' @param ... One or more unquoted expressions separated by commas.
#'   You can treat variable names like they are positions.
#'
#'   Positive values select variables; negative values to drop variables.
#'   If the first expression is negative, `select()` will automatically
#'   start with all variables.
#'
#'   Use named arguments to rename selected variables.
#'
#'   These arguments are automatically [quoted][rlang::quo] and
#'   [evaluated][rlang::eval_tidy] in a context where column names
#'   represent column positions. They support
#'   [unquoting][rlang::quasiquotation] and splicing. See
#'   `vignette("programming")` for an introduction to these concepts.
#'
#' @return a xts
#' @export
#' @rdname select
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
