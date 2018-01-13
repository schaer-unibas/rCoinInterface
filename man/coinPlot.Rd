\name{coinPlot}
\alias{coinPlot}
\title{Plots price, volume or market cap time series.}
\usage{
coinPlot(coin = "BTC", data = "price")
}

\arguments{
\item{coin}{The coin you are interested in, e.g. "BTC".}
\item{data}{The data you are interested in, i.e. "price", "volume" or "market_cap".}

}
\description{
Plots coin timeseries from JSON data. Can be used to get simple price, volume or market cap visualizations.}
\examples{
coinPlot(coin = "ETH", data = "price")
coinPlot(coin = "BTC", data = "volume")
coinPlot(coin = "LTC", data = "market_cap")
}
