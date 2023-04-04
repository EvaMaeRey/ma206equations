#' stamp_eq_var
#'
#' @description Variance in the  Description of the spread of the Data context. 
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
#'    stamp_eq_var()
stamp_eq_var <- function(x = 0,  y = 0, ...){

  plotmath_input <- "Var(X) * {phantom() == phantom()} * E * '[' *(X - mu)^{2} * ']' * {phantom() == phantom()} * sigma[x]^{2} * {phantom() == phantom()} * sum(, 1, n)*(x[i] - mu)^{2}*p[i] "

  annotate(geom = "text",
           label = plotmath_input,
           parse = T,
           x = x, y = y, ... )

}
