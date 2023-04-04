#' stamp_eq_sd_null_z_test
#'
#' @description Standard Deviation of the null distribution in the  One-proportion z-test context. In a two-proportion z-test, the null distribution is the distribution of the test statistic (z-score) under the assumption that the null hypothesis is true. The standard deviation of this null distribution depends on the sample sizes and the proportion values being compared.
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
#'    stamp_eq_sd_null_z_test()
stamp_eq_sd_null_z_test <- function(x = 0,  y = 0, ...){

  plotmath_input <- "sd[null] * {phantom() == phantom()} * sqrt(frac(pi[0](1 - pi[0]), n), )*' '"

  annotate(geom = "text",
           label = plotmath_input,
           parse = T,
           x = x, y = y, ... )

}
