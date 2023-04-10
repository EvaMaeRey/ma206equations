# Note: do not edit .R file directly; file created from equations_temlapte.txt file

#' typeset_eq_sd_null_z_test

#'

#' @description The funtion_name equation for use in plain texts
#'
#'
#' @return A character string containing a mathematical formula
#' @export
#'
#' @examples
#' typeset_eq_sd_null_z_test()

typeset_eq_sd_null_z_test <- function (inline = FALSE){

if(inline){
"$sd_{null}=\\sqrt{\\frac{\\pi_0(1-\\pi_0)}{n}}$ "
}else{
cat("$sd_{null}=\\sqrt{\\frac{\\pi_0(1-\\pi_0)}{n}}$ ")
}


}
