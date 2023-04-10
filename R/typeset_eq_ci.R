# Note: do not edit .R file directly; file created from equations_temlapte.txt file

#' typeset_eq_ci

#'

#' @description The funtion_name equation for use in plain texts
#'
#'
#' @return A character string containing a mathematical formula
#' @export
#'
#' @examples
#' typeset_eq_ci()

typeset_eq_ci <- function (inline = FALSE){

if(inline){
"$se=\\sqrt{\\frac{\\hat{p}(1-\\hat{p})}{n}}$ "
}else{
cat("$se=\\sqrt{\\frac{\\hat{p}(1-\\hat{p})}{n}}$ ")
}


}
