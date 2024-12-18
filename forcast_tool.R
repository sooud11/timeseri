#' Forecast future values
#'
#' Generates future predictions using a fitted model.
#'
#' @param model A fitted regression or ARIMA model.
#' @param h The number of future periods to forecast.
#' @return A numeric vector of forecasted values.
#' @export
forecast_future <- function(model, h) {
  forecasts <- forecast::forecast(model, h = h)
  return(as.numeric(forecasts$mean))
}
