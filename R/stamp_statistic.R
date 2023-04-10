# Note: do not edit .R file directly; file created from equations_temlapte.txt file

#' stamp_statistic
#'
#' @description Unstandardized statistic in the  One- proportion z-test context. 
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
#'    stamp_statistic()
stamp_statistic <- function(x = 0,  y = 0, ...){

  plotmath_input <- "plain(stat) * {phantom() == phantom()} * hat(p[1]) - hat(p[2]) "

  ggplot2::annotate(geom = "text",
           label = plotmath_input,
           parse = T,
           x = x, y = y, ... )

}
