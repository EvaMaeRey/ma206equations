# Note: do not edit .R file directly; file created from equations_temlapte.txt file

#' stamp_eq_sd
#'
#' @description standard deviation in the  Description of the spread of the Data context. 
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
#'    stamp_eq_sd()
stamp_eq_sd <- function(x = 0,  y = 0, ...){

  plotmath_input <- "sigma[x] * {phantom() == phantom()} * SD(X) * {phantom() == phantom()} * sqrt(Var(X), ) "

  ggplot2::annotate(geom = "text",
           label = plotmath_input,
           parse = T,
           x = x, y = y, ... )

}
