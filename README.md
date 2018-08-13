# rCoinInterface
<pre>
Package: rCoinInterface
Type: Package
Title: Coinmarketcap Interface for R
Version: 0.1.2
Author: Fabian Schär
Maintainer: Fabian Schär (f.schaer@unibas.ch)
Description: Coinmarketcap interface for R
Year: 2018
Import: jsonlite, ggplot2
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
library(rCoinInterface)
```

## Functions
* **getCoinData()**: Downloads index and coin data from coinmarketcap. Data gets stored in json or csv format.
* **prepareCoinData()**: Adds data to environment for further analysis.
* **coinCorr()**: Computes correlation between two crypto assets.
* **coinPlot()**: Plots coin timeseries from JSON data. Can be used to get simple price, volume or market cap visualizations.
* **coinRefresh()**: Checks and updates coin data if necessary.

## Usage
Although **getCoinData()** optionally allows to store data as .csv, the analysis functions **coinCorr()** and **coinPlot()** expect JSON format. Only use the CSV parameter if you plan to run your analysis in a spreadsheet application with CSV support.

## Citation
Fabian Schär (2018), rCoinInterface (R Package), https://github.com/Chainomics/rCoinInterface
