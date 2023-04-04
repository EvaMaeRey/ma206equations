#' stamp_sd_null_2_sample_t_test
#'
#' @description Standard Deviation of the null distribution in the  Two-Proportion z-test context. 
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
#'    stamp_sd_null_2_sample_t_test()
stamp_sd_null_2_sample_t_test <- function(x = 0,  y = 0, ...){

  plotmath_input <- "sd[null] * {phantom() == phantom()} * sqrt(hat(p) ~ symbol('*') ~ (1 - hat(p)) ~ symbol('*') ~ (frac(1, n[1]) * phantom(.) + frac(1, n[2]) * phantom(.)), ) "

  annotate(geom = "text",
           label = plotmath_input,
           parse = T,
           x = x, y = y, ... )

}
