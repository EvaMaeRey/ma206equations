# Note: do not edit .R file directly; file created from equations_temlapte.txt file

#' typeset_eq_geometric

#'

#' @description The funtion_name equation for use in plain texts
#'
#'
#' @return A character string containing a mathematical formula
#' @export
#'
#' @examples
#' typeset_eq_geometric()

typeset_eq_geometric <- function (inline = FALSE){

if(inline){
"$(1-p)^(n-1)*p$"
}else{
cat("$(1-p)^(n-1)*p$")
}


}
