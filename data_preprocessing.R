#' Load and preprocess time series data
#'
#' Cleans and preprocesses the time series data, handling missing values and converting time columns.
#'
#' @param data A data frame containing time and target columns.
#' @param time_col Name of the time column.
#' @param target_col Name of the target column.
#' @return A cleaned data frame.
#' @export
preprocess_data <- function(data, time_col, target_col) {
  data[[time_col]] <- as.Date(data[[time_col]])
  data <- data[order(data[[time_col]]), ]
  data <- na.omit(data)
  return(data)
}
