filter.xts  <- function(.data, ..., .dots = list()) {
  dots <- compat_lazy_dots(.dots, caller_env(), ...)
  filter(.data, !(!(!dots)))
}
