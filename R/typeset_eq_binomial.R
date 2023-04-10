# Note: do not edit .R file directly; file created from equations_temlapte.txt file

#' typeset_eq_binomial

#'

#' @description The funtion_name equation for use in plain texts
#'
#'
#' @return A character string containing a mathematical formula
#' @export
#'
#' @examples
#' typeset_eq_binomial()
#'

typeset_eq_binomial <- function (){

  cat("${{_N}C{_k}} \\cdot p^kq^{N-k}$")

}
