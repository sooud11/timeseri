#' Perform Augmented Dickey-Fuller test
#'
#' Tests for stationarity in the time series data.
#'
#' @param ts_data A numeric vector representing the time series.
#' @return A list with the test statistic and p-value.
#' @export
adf_test <- function(ts_data) {
  test_result <- tseries::adf.test(ts_data)
  return(list(statistic = test_result$statistic, p_value = test_result$p.value))
}
