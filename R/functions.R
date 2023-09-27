sepMillier<-function(x){
  return(format(x, format = "f", digits = NULL, big.mark = " ", scientific=FALSE, trim=TRUE))
}

evo <- function(from,to){
  return(((to-from)*100)/as.numeric(from))
}

evo_color <- function(value){
  if(value < 0){
    return("red-text")
  }
  if(value > 0){
    return("green-text")
  }
}

sur_millions <- function(data){
  res <- round(data/1000000)
  return(res)
}
