# rCoinInterface
<pre>
Package: rCoinInterface
Type: Package
Title: Coinmarketcap Interface for R
Version: 0.1.1
Author: Fabian Schär
Maintainer: Fabian Schär (f.schaer@unibas.ch)
Description: Coinmarketcap interface for R
import: jsonlite
License: GPL-3
Encoding: UTF-8
LazyData: true
</pre>

## Installation
To install directly from Github:
```
install.packages("devtools")
library(devtools)
install_github("chainomics/rCoinInterface")
install.packages("rCoinInterface")
library("rCoinInterface")
```

## Functions
* **getCoinData()**: Downloads index and coin data from coinmarketcap. Data gets stored in json or csv format.
* **prepareCoinData()**: Adds data to environment for further analysis.
* **coinCorr()**: Computes correlation between two crypto assets.
* **coinPlot()**: Plots coin timeseries from JSON data. Can be used to get simple price, volume or market cap visualizations.

## Usage
Although **getCoinData()** optionally allows to store data as .csv, the analysis functions **coinCorr()** and **coinPlot()** expect JSON format. Only use the CSV parameter if you plan to run your analysis in a spreadsheet application with CSV support.
