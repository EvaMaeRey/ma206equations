# Some functions here
#' stamp_eq_expected_value
#'
#' @description Provides expected value equation for display on ggplot figure
#'
#' @param x a numeric indicating position on x axis
#' @param y a numeric indicating position on y axis
#' @param ...
#'
#' @return a ggplot2 stamp layer
#' @export
#'
#' @examples
#' library(ggplot2)
#'    ggplot() +
#'    stamp_eq_expected_value()
stamp_eq_expected_value <- function(x = 0,  y = 0, ...){

  plotmath_expected_value <- "E * '[' *X * ']' * {phantom() == phantom()} * x[1]*p[1] + x[2]*p[2] + x[3]*p[3]*...x[n]*p[n] * {phantom() == phantom()} * sum(x[i]*p[i], 1, n) "

  ggplot2::annotate(geom = "text",
           label = plotmath_expected_value,
           parse = T,
           x = x, y = y, ...)

}


# Some functions here
#' stamp_eq_variance
#'
#' @description Provides variance equation for display on ggplot figure
#'
#' @param x a numeric indicating position on x axis
#' @param y a numeric indicating position on y axis
#' @param ...
#'
#' @return a ggplot2 stamp layer
#' @export
#'
#' @examples
#' library(ggplot2)
#'    ggplot() +
#'    stamp_eq_variance()
stamp_eq_variance <- function(x = 0,  y = 0, ...){

  plotmath_variance <- "Var(X) * {phantom() == phantom()} * E * '[' *(X - mu)^{2} * ']' * {phantom() == phantom()} * sigma[x]^{2} * {phantom() == phantom()} * sum(, 1, n)*(x[i] - mu)^{2}*p[i] "

  annotate(geom = "text",
           label = plotmath_variance,
           parse = T,
           x = x, y = y, ... )

}


# Some functions here
#' stamp_eq_standard_deviation
#'
#' @description Provides standard deviation equation for display on ggplot figure
#'
#' @param x a numeric indicating position on x axis
#' @param y a numeric indicating position on y axis
#' @param ...
#'
#' @return a ggplot2 stamp layer
#' @export
#'
#' @examples
#' library(ggplot2)
#'    ggplot() +
#'    stamp_eq_standard_deviation()
stamp_eq_standard_deviation <- function(x = 0,  y = 0, ...){

  plotmath_standard_deviation <- "sigma[x] * {phantom() == phantom()} * SD(X) * {phantom() == phantom()} * sqrt(Var(X), ) "

  annotate(geom = "text",
           label = plotmath_standard_deviation,
           parse = T,
           x = x, y = y, ...)

}



# Some functions here
#' stamp_eq_t_confidence_interval
#'
#' @description Provides confidence interval equation for display on ggplot figure
#'
#' @param x a numeric indicating position on x axis
#' @param y a numeric indicating position on y axis
#' @param ...
#'
#' @return a ggplot2 stamp layer
#' @export
#'
#' @examples
#' library(ggplot2)
#'    ggplot() +
#'    stamp_eq_t_confidence_interval()
stamp_eq_t_confidence_interval <- function(x = 0, y = 0, ...){


  confidence_interval <- "se * {phantom() == phantom()} * sqrt(frac(hat(p)(1 - hat(p)), n), )"

  annotate(geom = "text",
           label = confidence_interval,
           parse = T,
           x = x, y = y, ...)

}




# Some functions here
#' stamp_eq_sd_null_t_test
#'
#' @description Provides standard deviation equation for display on ggplot figure
#'
#' @param x a numeric indicating position on x axis
#' @param y a numeric indicating position on y axis
#' @param ...
#'
#' @return a ggplot2 stamp layer
#' @export
#'
#' @examples
#' library(ggplot2)
#'    ggplot() +
#'    stamp_eq_sd_null_t_test()
stamp_eq_sd_null_t_test <- function(x = 0, y = 0, ...){

  sd_null_t_test <- "se * {phantom() == phantom()} * sqrt(frac(hat(p)(1 - hat(p)), n), )"

  annotate(geom = "text",
           label = sd_null_t_test,
           parse = T,
           x = x, y = y, ...)

}



# ggplot() +
#
#   stamp_eq_ci(y = 2)
#
#
#
# stamp_eq_sd_null_t_test <- function(x = 0, y = 0, ...){
#
#
#
#   annotate(geom = "text",
#
#            label = "sd[null] * {phantom() == phantom()} * s / sqrt(n, )",
#
#            parse = T,
#
#            x = x, y = y, ...)
#
# }
#
#
#
# ggplot() +
#
#   stamp_eq_sd_null_t_test(y = 2)
#
#
#
# stamp_eq_se_t_test <- function(x = 0, y = 0, ...){
#
#
#
#   annotate(geom = "text",
#
#            label = "se * {phantom() == phantom()} * s / sqrt(n, ) ",
#
#            parse = T,
#
#            x = x, y = y, ...)
#
# }
#
#
#
# ggplot() +
#
#   stamp_eq_se_t_test(y = 2)
#
#
#
# stamp_statistic <- function(x = 0, y = 0, ...){
#
#
#
#   annotate(geom = "text",
#
#            label = "se * {phantom() == phantom()} * s / sqrt(n, ) ",
#
#            parse = T,
#
#            x = x, y = y, ...)
#
# }
#
#
#
# ggplot() +
#
#   stamp_statistic(y = 2)
