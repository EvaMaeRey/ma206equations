# Note: do not edit .R file directly; file created from equations_temlapte.txt file

#' typeset_sd_null_2_sample_t_test

#'

#' @description The funtion_name equation for use in plain texts
#'
#'
#' @return A character string containing a mathematical formula
#' @export
#'
#' @examples
#' typeset_sd_null_2_sample_t_test()

typeset_sd_null_2_sample_t_test <- function (inline = FALSE){

if(inline){
"$sd_{null}=\\sqrt{\\hat{p}*(1-\\hat{p})*(\\frac{1}{n_1}+\\frac{1}{n_2})}$"
}else{
cat("$sd_{null}=\\sqrt{\\hat{p}*(1-\\hat{p})*(\\frac{1}{n_1}+\\frac{1}{n_2})}$")
}


}
