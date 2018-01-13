##############################
# Load JSON Data into Workpace
##############################

# w/o argument or w/ allData you will load all coins (global environment).
# w/ argument you will be able to load specific coin (glibal environment).

prepareCoinData <- function(token = "allData", directory = getwd()){
  if(token=="allData"){
    map <- getIndex(directory = directory)
    for(i in 1:length(map[,3])){
      assign(paste(map[i,3]), fromJSON(paste(getwd(),"/",map[i,3],".json",sep="")), envir = .GlobalEnv)
    }
  }else{
    assign(paste(token), fromJSON(paste(getwd(),"/",token,".json",sep="")), envir = .GlobalEnv)
  }
}
