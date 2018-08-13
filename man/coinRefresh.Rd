\name{coinRefresh}
\alias{coinRefresh}
\title{Checks and updates coin data if necessry.}
\usage{
coinRefresh(coin = "BTC", store = TRUE)
}

\arguments{
\item{coin}{Crypto asset to be checked and refreshed.}
\item{store}{Stores a copy of the json file locally if set to TRUE.}
}

\description{
Checks and updates coin data if necessry.}
\examples{
coinRefresh("ETH")
coinRefresh("LOOM", store = FALSE)
}
