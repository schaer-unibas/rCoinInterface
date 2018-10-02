##############################
# Refresh Coin Data
##############################

coinRefresh <- function(coin = "BTC", store = TRUE){
  if(exists(coin) == FALSE){
    coinTemp <- fromJSON(paste("https://coincap.io/history/",coin,sep=""))
    if(store == TRUE){
      write_json(coinTemp,path = paste(coin,".json",sep=""))
    }
    prepareCoinData(coin)
    return(coinTemp)
  }else if(Sys.Date() != as.Date(as.POSIXct(as.numeric( eval(parse(text= eval(parse(text = "coin"))))$price[nrow(eval(parse(text= eval(parse(text = "coin"))))$price),1])/1000, origin="1970-01-01",tz="GMT"))){
    coinTemp <- fromJSON(paste("https://coincap.io/history/",coin,sep=""))
    prepareCoinData(coin)
    if(store == TRUE){
      write_json(coinTemp,path = paste(coin,".json",sep=""))
    }
  }else{
    return(get(coin))
  }
}
