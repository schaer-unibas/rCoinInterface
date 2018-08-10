##############################
# Plot Coin Time Series
##############################
coinPlot <- function(coin = BTC, data = "price"){
  if(data == "price"){
    ggplot(
      mapping = aes(
        x = as.Date(as.POSIXct(as.numeric((eval(parse(text= eval(parse(text = "token"))))$price[,1])/1000),origin="1970-01-01",tz="GMT")),
        y = eval(parse(text= eval(parse(text = "token"))))$price[,2])) + geom_line() + ylab("USD Price") + xlab("Time") + scale_y_continuous(position = "left")
  } else if(data == "volume"){
    ggplot(
      mapping = aes(
        x = as.Date(as.POSIXct(as.numeric((eval(parse(text= eval(parse(text = "token"))))$volume[,1])/1000),origin="1970-01-01",tz="GMT")),
        y = eval(parse(text= eval(parse(text = "token"))))$volume[,2]/1000000)) + geom_line() + ylab("Trade Volume in Mio. USD") + xlab("Time") + scale_y_continuous(position = "left")
  } else if(data == "market_cap"){
    ggplot(
      mapping = aes(
        x = as.Date(as.POSIXct(as.numeric((eval(parse(text= eval(parse(text = "token"))))$market_cap[,1])/1000),origin="1970-01-01",tz="GMT")),
        y = eval(parse(text= eval(parse(text = "token"))))$market_cap[,2]/1000000)) + geom_line() + ylab("Market Cap in Mio. USD") + xlab("Time") + scale_y_continuous(position = "left")
  } else {
    print("Unknown plot parameter. Please use 'price', 'volume' or 'market_cap'.")
  }
}


