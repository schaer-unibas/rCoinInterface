\name{getCoinData}
\alias{getCoin}
\title{Interface to get data from coinmarketcap}
\usage{
getCoinData(logging = TRUE, csv = FALSE, delay = 3, resume = 1)
}

\arguments{
\item{logging}{If true, the download progress gets logged in the console.}
\item{csv}{If true, data will be stored in csv format instead of json.}
\item{delay}{Delay in seconds after each request. Can be used to comply with API request limits.}
\item{resume}{Used to proceed with last data set after a disconnect.}

}
\description{
Downloads index and coin data from coinmarketcap. Data gets stored in json or csv format.
}
\examples{
getCoinData(logging = FALSE, delay = 0)
}
