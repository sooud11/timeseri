test_that("forecast_future works correctly", {
  ts_data <- ts(cumsum(rnorm(100)))
  model <- forecast::auto.arima(ts_data)

  forecasted_values <- forecast_future(model, h = 5)

  # Check forecasted values length
  expect_equal(length(forecasted_values), 5)

  # Check forecasted values are numeric
  expect_type(forecasted_values, "double")
})
