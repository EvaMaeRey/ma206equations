# Note: do not edit .R file directly; file created from equations_temlapte.txt file

#' typeset_sd_null_two_sample_t_test

#'

#' @description The funtion_name equation for use in plain texts
#'
#'
#' @return A character string containing a mathematical formula
#' @export
#'
#' @examples
#' typeset_sd_null_two_sample_t_test()

typeset_sd_null_two_sample_t_test <- function (inline = FALSE){

if(inline){
"$sd_{null}=\\sqrt{\\frac{s_1^2}{n_1}+\\frac{s_2^2}{n_2}}$"
}else{
cat("$sd_{null}=\\sqrt{\\frac{s_1^2}{n_1}+\\frac{s_2^2}{n_2}}$")
}


}
