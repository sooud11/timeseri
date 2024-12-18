#' Create lag features
#'
#' Generates lagged features for the time series data.
#'
#' @param data A data frame.
#' @param target_col The name of the target column.
#' @param lags A numeric vector of lag periods to create.
#' @return A data frame with lagged features added.
#' @export
create_lag_features <- function(data, target_col, lags) {
  for (lag in lags) {
    data[[paste0(target_col, "_lag", lag)]] <- dplyr::lag(data[[target_col]], lag)
  }
  return(data)
}
