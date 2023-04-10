# Note: do not edit .R file directly; file created from equations_temlapte.txt file

#' typeset_eq_se_t_test

#'

#' @description The funtion_name equation for use in plain texts
#'
#'
#' @return A character string containing a mathematical formula
#' @export
#'
#' @examples
#' typeset_eq_se_t_test()

typeset_eq_se_t_test <- function (inline = FALSE){

if(inline){
"$se=s/sqrt{n}$"
}else{
cat("$se=s/sqrt{n}$")
}


}
