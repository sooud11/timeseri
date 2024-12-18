#' Compute RMSE
#'
#' Computes the Root Mean Square Error for model predictions.
#'
#' @param actual A numeric vector of actual values.
#' @param predicted A numeric vector of predicted values.
#' @return The RMSE value.
#' @export
compute_rmse <- function(actual, predicted) {
  return(sqrt(mean((actual - predicted)^2)))
}
