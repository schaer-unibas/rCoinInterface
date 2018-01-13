\name{prepareCoinData}
\alias{prepareCoin}
\title{Store coin data in environment for further analysis}
\usage{
prepareCoinData(token = "allData", directory = getwd())
}

\arguments{
\item{token}{Used to define specific coin. By default, it will load all available data.}
\item{directory}{Used to set data directory, if unequal working directory.}

}
\description{
Parses data in environment for further analysis.
}
\examples{
prepareCoinData(token = "ETH")
}
