
See also:
<https://github.com/EvaMaeRey/ay_2023_2_advanced_individual_study>

## Title

Building an R package to deliver easy-to-use equations in prose and
plots for intro to statistics and probability curricula

## Abstract

Mathematical fluency involves frequent use of equations. However, typing
out equations for use in electronic documents can be tedious. In a
classroom setting with a set curriculum, the set of equations to be
mastered is well defined. Having shortcuts to produce this set of
equations in prose or plots could be beneficial for students and
instructors alike. The goal of this independent study is to create
functions that will quickly deliver the typed versions of equations that
translate into beautiful printed versions. We will store the typed
versions and thoughtfully crafted R functions to make these typed out
equations easily accessible. The functions will be bundled into an R
package.

# The problem

Using mathematical notation is a powerful way to communicate about
probabilistic and statistical concept. When notation is combined with
data visualization or descriptive prose that power is even greater.

However, using equations in these contexts is often done by typing in a
typesetting version of the equation that may not be awkward. Consider
the probability density function for the normal distribution, centered
at
![\\mu](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;%5Cmu
"\\mu") with a standard deviation of
![\\sigma](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;%5Csigma
"\\sigma"):

\[drop rendered version in here\]

The typed version of this equation which follows is a distant cousin
from its beautiful rendered kin above:

`p(x) = \frac{1}{\sqrt{ 2 \pi \sigma^2 }} e^{ - \frac{ (x - \mu)^2 } {2
\sigma^2} }`

Furthermore, if we want to use annotate a plot with this equation, we
would need to use plot math, a different typed syntax.

`p(x) * {phantom() == phantom()} * frac(1, sqrt(2*pi*sigma^{2}, )) *
phantom(.)*e^{phantom() - frac((x - mu)^{2}, 2*sigma^{2})}`

``` r
math_plot_normal <- "p(x) * {phantom() == phantom()} * frac(1, sqrt(2*pi*sigma^{2}, )) * phantom(.)*e^{phantom() - frac((x - mu)^{2}, 2*sigma^{2})} "

library(ggplot2)
ggxmean:::stamp_space() + 
  annotate(geom = "label", 
           label = math_plot_normal,
           parse = T,
           x = 2, y = .3) + 
  ggxmean::stamp_normal_dist() + 
  ggstamp::stamp_text_ljust(label = "What is the max of this function?",
                      x = -4, 
                      y = .44)
```

![](README_files/figure-gfm/unnamed-chunk-1-1.png)<!-- -->
<!-- Fortunately, a translater exists. -->

<!-- ```{r} -->

<!-- exp_to_plot <- latex2exp::TeX("$p(x) = \\frac{1}{\\sqrt{ 2 \\pi \\sigma^2 }} e^{ - \\frac{ (x - \\mu)^2 } {2 \\sigma^2} }$") -->

<!-- ``` -->

# A different work flow within intro probability and statistics course work…

What if we could call a function to get back the text that will render
to our beautiful equations. For example a function like
`return_equation_normal()` could be called to get the typed version of
the prose and `stamp_eq_normal()` for use in ggplot2.

``` r
library(ggplot2)
ggxmean:::stamp_space() + 
  stamp_equation_normal() 
```

# Solution: package with key equations

# Details of Our Implementation

``` r
code <- readLines("R/functions.R")
```

``` r
# Some functions here
```

The equations in the plot were produce in the following fashion (no
functions or package pre-built):

``` r
equation_z_stat_md <- "$z=\\frac{\\hat{p}-\\pi}{SD_{null}}$, where $SD_{null}=\\sqrt{\\frac{\\pi_{0}*(1-\\pi_{0})}{n}}$"

equation_z_stat_plot <- latex2exp::TeX(equation_z_stat_md)

equation_conf_interval_z_md <- "$CI = \\hat{p}\\pm Multiplier*SE$, where $SE = \\sqrt{\\frac{\\hat{p}*(1-\\hat{p})}{n}}$"

equation_conf_interval_z_plot <- latex2exp::TeX(equation_conf_interval_z_md)


library(tidyverse)

ggplot() +
  annotate("label", 
           x = 0, y = 0, 
           label = equation_z_stat_plot, 
           color = "grey25", size = 4)
```

![](README_files/figure-gfm/unnamed-chunk-5-1.png)<!-- -->

``` r
ggplot() +
  annotate("label", 
           x = 0, y = 0, 
           label = equation_conf_interval_z_plot, 
           color = "grey25", size = 4)
```

![](README_files/figure-gfm/unnamed-chunk-5-2.png)<!-- -->

![\\sqrt{3x-1}+(1+x)^2](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;%5Csqrt%7B3x-1%7D%2B%281%2Bx%29%5E2
"\\sqrt{3x-1}+(1+x)^2")

![z=\\frac{\\hat{p}-\\pi}{SD\_{null}}](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;z%3D%5Cfrac%7B%5Chat%7Bp%7D-%5Cpi%7D%7BSD_%7Bnull%7D%7D
"z=\\frac{\\hat{p}-\\pi}{SD_{null}}"), where
![SD\_{null}=\\sqrt{\\frac{\\pi\_{0}\*(1-\\pi\_{0})}{n}}](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;SD_%7Bnull%7D%3D%5Csqrt%7B%5Cfrac%7B%5Cpi_%7B0%7D%2A%281-%5Cpi_%7B0%7D%29%7D%7Bn%7D%7D
"SD_{null}=\\sqrt{\\frac{\\pi_{0}*(1-\\pi_{0})}{n}}")

  
![\\alpha](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;%5Calpha
"\\alpha")  

# How do we write a package?

  - We will still follow the steps outlined in this data package readme:
    <https://github.com/EvaMaeRey/tidytitanic>
  - As well as consult the package building guide:
    <https://evamaerey.github.io/package_in_20_minutes/package_in_20_minutes>

## Which equations are relevant for the statistics and probability course?

A good start for looking at the core of equations used in ma206 is the
code annex:

  - Rendered: <https://evamaerey.github.io/ma206/code_annex.html>
  - Source:
    <https://github.com/EvaMaeRey/ma206/blob/master/code_annex.Rmd>

Result would be to quickly include relevant formulas in plots (like
ggplot below which looks at proposal 1/3 as null hypothesis for a
proportion) and .rmd documents.

# Project timeline

| Timing      | Activity and Deliverable                                                                                           | Hours |
| ----------- | ------------------------------------------------------------------------------------------------------------------ | ----- |
| 0-3 weeks   | Background on writing functions in R and package architecture                                                      | 15    |
| 3-6 weeks   | ggplot2 programming basics, math type interface                                                                    | 15    |
| 6-10 weeks  | Building functionality for returning intro to stats and probability equations easily from R for documents and plot | 15    |
| 10-12 weeks | Showcasing and soliciting feedback                                                                                 | 15    |
| 12-15 weeks | Incorporating feedback                                                                                             | 10    |
| Final       | Report and presentation.                                                                                           | 10    |

# How do we collaborate and share the package?

  - create a github account for collaboration <https://github.com/>
  - we’ll make the repository available in this account

<!-- end list -->

``` r
plotmath_ev <- latex2exp::TeX("$E[X] = x_1p_1 + x_2p_2 + x_3p_3 ...x_np_n = \\sum_1^n{x_ip_i}$")
plotmath_var <- latex2exp::TeX("$Var(X) = E[(X-\\mu)^2] = \\sigma^2_x = \\sum_1^n(x_i-\\mu)^2p_i$")
plotmath_sd <- latex2exp::TeX("$\\sigma_x = SD(X) = \\sqrt{Var(X)}$")



### stamp equation example
stamp_one_plus_one <- function(x = 0, y = 0, ...){

  annotate(geom = "text",
           label = "1 + 1",
           parse = T,
           x = x, y = y, ...)

}

library(tidyverse)
ggplot2::ggplot() +
  stamp_one_plus_one() +
  stamp_one_plus_one(size = 12, y = 2)
```

![](README_files/figure-gfm/more%20examples-1.png)<!-- -->

``` r
tibble::tibble(event = c("totaled", "fender bender", "accident free"),
       probability = c(.01, .09, .9),
       payout = c(20000, 5000, 0)) ->
  expected


expected %>%
  ggplot() +
  aes(x = payout, y = probability) +
  geom_point() +
  geom_segment(aes(xend = payout, yend = 0)) +
  geom_text(aes(label = probability), size = 5,
            vjust = -.5, color = "black") +
  geom_vline(xintercept = sum(c(.01*20000, .09*5000)),
             linetype = "dashed", color = "black") +
  labs(subtitle = "Course idea 8:  The expected value E.V. is the 'balancing point' of a Random variable, X.  It is the weighted average of values, (weighting values by their probabilities). In large samples from the X, the average will be close to the E.V.;" %>% str_wrap(60)) +
  annotate(geom = "label", x =sum(c(.01*20000, .09*5000)), label = sum(c(.01*20000, .09*5000)), y = .5 ) +
  scale_y_continuous(limits = c(0,1)) +
  annotate(geom = "text", label = "E * '[' *X * ']' * {phantom() == phantom()} * x[1]*p[1] + x[2]*p[2] + x[3]*p[3]*...x[n]*p[n] * {phantom() == phantom()} * sum(x[i]*p[i], 1, n) ", parse = T,
           x = 12000, y = .95) +
  annotate(geom = "text", label = "Var(X) * {phantom() == phantom()} * E * '[' *(X - mu)^{2} * ']' * {phantom() == phantom()} * sigma[x]^{2} * {phantom() == phantom()} * sum(, 1, n)*(x[i] - mu)^{2}*p[i] ", parse = T,
           x = 12000, y = .8) +
  annotate(geom = "text", label = "sigma[x] * {phantom() == phantom()} * SD(X) * {phantom() == phantom()} * sqrt(Var(X), ) ", parse = T,
           x = 12000, y = .65)
```

![](README_files/figure-gfm/more%20examples-2.png)<!-- -->

``` r
stamp_eq_ev <- function(x = 0,  y = 0){

  # your work here

}


stamp_eq_var <- function(x = 0,  y = 0){

  # your work here

}

stamp_eq_sd <- function(x = 0,  y = 0){

  # your work here

}



ggplot() +
  stamp_eq_ev() +
  stamp_eq_var(y = -1)+
  stamp_eq_sd(y = -2)
```

![](README_files/figure-gfm/more%20examples-3.png)<!-- -->
