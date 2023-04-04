#' stamp_eq_ci
#'
#' @description Confidence Interval in the  One-proportion z-test context. The confidence interval is a useful tool in hypothesis testing, as it allows us to estimate the range of possible values for the true population proportion, and can help us decide whether a null hypothesis is plausible or should be rejected.



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
#'    stamp_eq_ci()
stamp_eq_ci <- function(x = 0,  y = 0, ...){

  plotmath_input <- " se * {phantom() == phantom()} * sqrt(frac(hat(p)(1 - hat(p)), n), ) "

  annotate(geom = "text",
           label = plotmath_input,
           parse = T,
           x = x, y = y, ... )

}
