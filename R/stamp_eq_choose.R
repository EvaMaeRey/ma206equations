#' stamp_eq_choose
#'
#' @description Choose Equation in the  Probability context. 
#'
#' @param x a numeric indicating position on x axis
#' @param y a numeric indicating position on y axis
#' @param ...
#'
#' @return a ggplot2 annotation layer which is the plotmath version of a function
#' @export
#'
#' @examples
#' library(ggplot2)
#' ggplot() +
#'    stamp_eq_choose()
stamp_eq_choose <- function(x = 0,  y = 0, ...){

  plotmath_input <- "{}[n]*C[r] * {phantom() == phantom()} * frac(n*'!', r*'!'(n - r)*'!')"

  annotate(geom = "text",
           label = plotmath_input,
           parse = T,
           x = x, y = y, ... )

}
