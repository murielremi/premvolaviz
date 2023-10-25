#' Separateur de millier
#'
#' @param x a numeric value
#'
#' @return a string value of the input value with space thousand separator
#' @export
#'
#' @examples
#' sepMillier(2340000)
#' # ouptut: 2 340 000
sepMillier<-function(x){
  return(format(x, format = "f", digits = NULL, big.mark = " ", scientific=FALSE, trim=TRUE))
}
