#' stamp_eq_se_z_test
#'
#' @description Standard error in the  One-proportion z-test context. The standard error (SE) of a one proportion z-test is a measure of the variability of the sample proportion estimate around the true population proportion. It tells us how much we expect the sample proportion to vary if we were to repeat the sampling process many times.
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
#'    stamp_eq_se_z_test()
stamp_eq_se_z_test <- function(x = 0,  y = 0, ...){

  plotmath_input <- "sd[null] * {phantom() == phantom()} * sqrt(hat(p) ~ symbol('*') ~ (1 - hat(p)) ~ symbol('*') ~ (frac(1, n[1]) * phantom(.) + frac(1, n[2]) * phantom(.)), ) "

  ggplot2::annotate(geom = "text",
           label = plotmath_input,
           parse = T,
           x = x, y = y, ... )

}
