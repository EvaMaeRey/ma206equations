# Note: do not edit .R file directly; file created from equations_temlapte.txt file

#' stamp_se_two_sample_t_test
#'
#' @description Standard Error in the  Two-Sample T-test context. 
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
#'    stamp_se_two_sample_t_test()
stamp_se_two_sample_t_test <- function(x = 0,  y = 0, ...){

  plotmath_input <- "se * {phantom() == phantom()} * sqrt(frac(s[1]^{2}, n[1]) * phantom(.) + frac(s[2]^{2}, n[2]), ) "

  ggplot2::annotate(geom = "text",
           label = plotmath_input,
           parse = T,
           x = x, y = y, ... )

}
