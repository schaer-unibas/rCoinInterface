##############################
# Plot Coin Time Series
##############################
coinPlot <- function(coin = BTC, data = "price"){
  if(data == "price"){
    length(coin$price[,2])
    ed <- c(as.numeric(format(Sys.time(), "%Y")), (as.numeric(format(Sys.time(), "%m")) * 30 + as.numeric(format(Sys.time(), "%d"))))
      plot(ts(coin$price[,2],end = ed,frequency = 365),ylab="Price", xlab="Time", col="blue")
  } else if(data == "volume"){
    length(coin$volume[,2])
    ed <- c(as.numeric(format(Sys.time(), "%Y")), (as.numeric(format(Sys.time(), "%m")) * 30 + as.numeric(format(Sys.time(), "%d"))))
    plot(ts(coin$volume[,2],end = ed,frequency = 365),ylab="Volume", xlab="Time", col="blue", main = coin)
  } else if(data == "market_cap"){
    length(coin$market_cap[,2])
    ed <- c(as.numeric(format(Sys.time(), "%Y")), (as.numeric(format(Sys.time(), "%m")) * 30 + as.numeric(format(Sys.time(), "%d"))))
    plot(ts(coin$market_cap[,2],end = ed,frequency = 365),ylab="Market Cap", xlab="Time", col="blue", main = coin)
  } else {
    print("Unknown plot parameter. Please use 'price', 'volume' or 'market_cap'.")
  }
}


