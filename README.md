# timeseri
`timeseri` is an R package designed to simplify time series analysis and forecasting. It provides tools for preprocessing data, building models, and evaluating performance, making it a valuable resource for data scientists and analysts working with time series data.

## Features

- **ADF Test**: Perform Augmented Dickey-Fuller tests for stationarity.
- **Lag Features**: Automatically create lagged variables for time series
- **Linear Models**: Fit and evaluate linear models for forecasting.
- **RMSE Computation**: Compute root mean squared error (RMSE) for model evaluation.
- **Forecasting**: Generate future predictions based on trained models.

## Installation

You can install the development version of `timeseri` directly from GitHub:

```r
# Install devtools if not already installed
install.packages("devtools")

# Install timeseri from GitHub
devtools::install_github("sooud11/timeseri")
