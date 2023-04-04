#' stamp_eq_geometric
#'
#' @description Geometric Distribution in the  Probability  context. In each of these situations, the geometric distribution provides a way to model the probability of observing a specific number of trials until the first success occurs, based on the underlying probability of success on each trial. This can be useful for making predictions, designing experiments or systems, and assessing the reliability or efficiency of a process.
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
#'    stamp_eq_geometric()
stamp_eq_geometric <- function(x = 0,  y = 0, ...){

  plotmath_input <- "(1 - p)^{n - 1} ~ symbol('*') ~ p "

  annotate(geom = "text",
           label = plotmath_input,
           parse = T,
           x = x, y = y, ... )

}
