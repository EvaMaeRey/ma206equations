# Note: do not edit .R file directly; file created from equations_temlapte.txt file

#' stamp_eq_sd_null_t_test
#'
#' @description Standard Deviation of the null distribution in the  One-sample t-test context. 
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
#'    stamp_eq_sd_null_t_test()
stamp_eq_sd_null_t_test <- function(x = 0,  y = 0, ...){

  plotmath_input <- "sd[null] * {phantom() == phantom()} * s / sqrt(n, ) "

  ggplot2::annotate(geom = "text",
           label = plotmath_input,
           parse = T,
           x = x, y = y, ... )

}
