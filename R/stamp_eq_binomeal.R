#' stamp_eq_binomeal
#'
#' @description Binomial Distribution in the  Probability  context. the binomial distribution provides a way to model the probability of observing a specific number of successes in a fixed number of trials, based on the underlying probability of success on each trial. This can be useful for making predictions, testing hypotheses, and assessing the reliability or efficiency of a process. 
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
#'    stamp_eq_binomeal()
stamp_eq_binomeal <- function(x = 0,  y = 0, ...){

  plotmath_input <- " {{{}[N]}*C * {{}[k]}} %.% p^{k}*q^{N - k}"

  ggplot2::annotate(geom = "text",
           label = plotmath_input,
           parse = T,
           x = x, y = y, ... )

}
