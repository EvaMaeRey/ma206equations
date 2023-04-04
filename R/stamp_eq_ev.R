#' stamp_eq_ev
#'
#' @description Expected Value in the  Probability Distributions context. The expected value of a probability distribution is a measure of the central tendency of the distribution, and represents the average or mean value that we would expect to observe if we were to repeat the random experiment many times. The expected value is a useful statistic because it provides a single number that summarizes the distribution of values that can be observed. It can be used to make predictions about future outcomes, as well as to assess the performance of statistical models or experimental designs.


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
#'    stamp_eq_ev()
stamp_eq_ev <- function(x = 0,  y = 0, ...){

  plotmath_input <- "E * '[' *X * ']' * {phantom() == phantom()} * x[1]*p[1] + x[2]*p[2] + x[3]*p[3]*...x[n]*p[n] * {phantom() == phantom()} * sum(x[i]*p[i], 1, n)"

  annotate(geom = "text",
           label = plotmath_input,
           parse = T,
           x = x, y = y, ... )

}
