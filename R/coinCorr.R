##############################
# Correlation Function JSON
##############################
coinCorr <- function(coinA,coinB,obs="ALL"){
  coinRefresh(toString(substitute(coinA)))
  coinRefresh(toString(substitute(coinB)))
  if(obs=="ALL"){
    obs <- min(length(coinA$price[,2]),length(coinB$price[,2]))
  }else if(obs > min(length(coinA$price[,2]),length(coinB$price[,2]))){
    warning("Invalid Data Range")
  }
  corr <- cor(coinA$price[(length(coinA$price[,2])-obs+1):length(coinA$price[,2]),2],coinB$price[(length(coinB$price[,2])-obs+1):length(coinB$price[,2]),2])
  return(c(corr,obs))
}



