% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/stamp_eq_sd.R
\name{stamp_eq_sd}
\alias{stamp_eq_sd}
\title{stamp_eq_sd}
\usage{
stamp_eq_sd(x = 0, y = 0, ...)
}
\arguments{
\item{x}{a numeric indicating position on x axis}

\item{y}{a numeric indicating position on y axis}

\item{...}{}
}
\value{
a ggplot2 annotation layer which is the plotmath version of a function
}
\description{
standard deviation in the  Description of the spread of the Data context.
}
\examples{
library(ggplot2)
ggplot() +
   stamp_eq_sd()
}
