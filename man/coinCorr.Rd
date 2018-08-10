\name{coinCorr}
\alias{coinCorr}
\title{Computes correlation between two crypto assets.}
\usage{
prepareCoinData(coinA, coinB, obs = "ALL", directory = getwd())
}

\arguments{
\item{coinA}{First crypto asset.}
\item{coinB}{Second crypto asset.}
\item{obs}{Manually sets number of observations.}

}
\description{
Computes correlation between two crypto assets.}
\examples{
coinCorr(BTC, ETH, obs = "ALL")
coinCorr(ETH, ETC, obs = 100)
}
