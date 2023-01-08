
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

## Which equations are relevant for the statistics and probability course?

A good start for looking at the core of equations used in ma206 is the
code annex:

-   Rendered: <https://evamaerey.github.io/ma206/code_annex.html>
-   Source:
    <https://github.com/EvaMaeRey/ma206/blob/master/code_annex.Rmd>

Result would be to quickly include relevant formulas in plots (like
ggplot below which looks at proposal 1/3 as null hypothesis for a
proportion) and .rmd documents.

# Project timeline

| Timing      | Activity and Deliverable                                                                                           | Hours |
|-------------|--------------------------------------------------------------------------------------------------------------------|-------|
| 0-3 weeks   | Background on writing functions in R and package architecture                                                      | 15    |
| 3-6 weeks   | ggplot2 programming basics, math type interface                                                                    | 15    |
| 6-10 weeks  | Building functionality for returning intro to stats and probability equations easily from R for documents and plot | 15    |
| 10-12 weeks | Showcasing and soliciting feedback                                                                                 | 15    |
| 12-15 weeks | Incorporating feedback                                                                                             | 10    |
| Final       | Report and presentation.                                                                                           | 10    |

# Some initial code ideas…

The equations in the plot were produce in the following fashion (no
functions or package prebuilt):

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

![](README_files/figure-gfm/unnamed-chunk-1-1.png)<!-- -->

``` r
ggplot() +
  annotate("label", 
           x = 0, y = 0, 
           label = equation_conf_interval_z_plot, 
           color = "grey25", size = 4)
```

![](README_files/figure-gfm/unnamed-chunk-1-2.png)<!-- -->

![z=\\frac{\\hat{p}-\\pi}{SD\_{null}}](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;z%3D%5Cfrac%7B%5Chat%7Bp%7D-%5Cpi%7D%7BSD_%7Bnull%7D%7D "z=\frac{\hat{p}-\pi}{SD_{null}}"),
where
![SD\_{null}=\\sqrt{\\frac{\\pi\_{0}\*(1-\\pi\_{0})}{n}}](https://latex.codecogs.com/png.image?%5Cdpi%7B110%7D&space;%5Cbg_white&space;SD_%7Bnull%7D%3D%5Csqrt%7B%5Cfrac%7B%5Cpi_%7B0%7D%2A%281-%5Cpi_%7B0%7D%29%7D%7Bn%7D%7D "SD_{null}=\sqrt{\frac{\pi_{0}*(1-\pi_{0})}{n}}")

# How do we write a package?

-   We will still follow the steps outlined in this data package readme:
    <https://github.com/EvaMaeRey/tidytitanic>
-   As well as consult the package building guide:
    <https://evamaerey.github.io/package_in_20_minutes/package_in_20_minutes>

# How do we collaborate and share the package?

-   create a github account for collaboration <https://github.com/>
-   we’ll make the repository available in this account
