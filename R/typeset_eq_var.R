# Note: do not edit .R file directly; file created from equations_temlapte.txt file

#' typeset_eq_var

#'

#' @description The funtion_name equation for use in plain texts
#'
#'
#' @return A character string containing a mathematical formula
#' @export
#'
#' @examples
#' typeset_eq_var

typeset_eq_var <- function (){

  cat("$Var(X) = E[(X-\\mu)^2] = \\sigma^2_x = \\sum_1^n(x_i-\\mu)^2p_i$")

}
