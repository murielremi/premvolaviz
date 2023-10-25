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

#' Value Unite
#'
#' @param val a numeric value
#'
#' @return string value of the input value, abbreviated with number ISU (K for Thousand, M for Million and MDS for Billion)
#' @export
#'
#' @examples
#' valueUnite(2800)
#' output: 2.8 K
#' valueUnite(2370000)
#' output: 2.37 M
#' valueUnite(7890000000)
#' output: 7.89 MDS
valueUnite <- function(val){
  if(!length(val)){
    return(0)
  }
  if(is.na(val)){
    return("")
  }
  if(is.nan(val)){
    return("")
  }
  if(val<= 1000){
    return(paste0(val))
  }
  else if(val<= 1000000){
    return(paste0(round(val/1000,2)," K"))
  }
  else if(val<= 1000000000){
    return(paste0(round(val/1000000,2)," M"))
  }
  else{
    return(paste0(round(val/1000000000,2)," MDS"))
  }
}
