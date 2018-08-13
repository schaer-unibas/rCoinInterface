##############################
# Coin Data Update
##############################
getCoinData <- function(logging = TRUE, csv = FALSE, delay = 3, resume = 1){
    # Pull list of available Cryptoassets
    map <- fromJSON('http://www.coincap.io/map')
    write_json(map,path = paste("000_index",".json",sep=""))
    # Refresh Data
    for(i in resume:length(map[,1])){
      # Read URL specific cryptoasset and convert it to data.frame
      data <- fromJSON(paste("http://www.coincap.io/history/",map[i,3],sep=""))
      if(csv == TRUE){
        # Save data frame as csv
        write.csv(data$price[,1:2],paste(map[i,3],"_price",".csv",sep=""))
        write.csv(data$volume[,1:2],paste(map[i,3],"_vol",".csv",sep=""))
        write.csv(data$market_cap[,1:2],paste(map[i,3],"_mcap",".csv",sep=""))
      }else{
        write_json(data,path = paste(map[i,3],".json",sep=""))
      }
      # Logging current Progress
      if(logging == TRUE){
        cat(map[i,2]," (",map[i,3],") ", "[map entry ", i, "] completed.","\n",sep = "")
      }
      # Forced delay
      Sys.sleep(delay)
    }
}
