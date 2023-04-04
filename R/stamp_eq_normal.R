#' stamp_eq_normal
#'
#' @description Normal Distribution in the  Probability  context. Normal distribution: The normal distribution is one of the most commonly used probability distributions in statistics, and is often used to model continuous variables that are approximately normally distributed. In R, the normal distribution is implemented using the dnorm(), pnorm(), qnorm(), and rnorm() functions.
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
#'    stamp_eq_normal()
stamp_eq_normal <- function(x = 0,  y = 0, ...){

  plotmath_input <- "p(x) * {phantom() == phantom()} * frac(1, sqrt(2*pi*sigma^{2}, )) * phantom(.)*e^{phantom() - frac((x - mu)^{2}, 2*sigma^{2})} "

  annotate(geom = "text",
           label = plotmath_input,
           parse = T,
           x = x, y = y, ... )

}
