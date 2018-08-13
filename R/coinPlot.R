##############################
# Plot Coin Time Series
##############################
coinPlot <- function(coin = "BTC", data = "price"){
  coinRefresh(coin)
  if(data == "price"){
    ggplot(
      mapping = aes(
        x = as.Date(as.POSIXct(as.numeric(( eval(parse(text= eval(parse(text = "coin"))))$price[,1])/1000),origin="1970-01-01",tz="GMT")),
        y = eval(parse(text= eval(parse(text = "coin"))))$price[,2])) + geom_line() + ylab("USD Price") + xlab("Time") + scale_y_continuous(position = "left") + ggtitle(paste(toString(substitute(coin)),"Price Chart")) + theme(plot.title = element_text(hjust = 0.5))
  } else if(data == "volume"){
    ggplot(
      mapping = aes(
        x = as.Date(as.POSIXct(as.numeric(( eval(parse(text= eval(parse(text = "coin"))))$price[,1])/1000),origin="1970-01-01",tz="GMT")),
        y = eval(parse(text= eval(parse(text = "coin"))))$volume[,2]/1000000)) + geom_line() + ylab("Trade Volume in Mio. USD") + xlab("Time") + scale_y_continuous(position = "left") + ggtitle(paste(toString(substitute(coin)),"Daily Exchange Volume Chart")) + theme(plot.title = element_text(hjust = 0.5))
  } else if(data == "market_cap"){
    ggplot(
      mapping = aes(
        x = as.Date(as.POSIXct(as.numeric(( eval(parse(text= eval(parse(text = "coin"))))$price[,1])/1000),origin="1970-01-01",tz="GMT")),
        y = eval(parse(text= eval(parse(text = "coin"))))$market_cap[,2]/1000000000)) + geom_line() + ylab("Market Cap in Mia. USD") + xlab("Time") + scale_y_continuous(position = "left") + ggtitle(paste(toString(substitute(coin)),"Total Marketcap Chart")) + theme(plot.title = element_text(hjust = 0.5))
  } else {
    print("Unknown plot parameter. Please use 'price', 'volume' or 'market_cap'.")
  }
}


