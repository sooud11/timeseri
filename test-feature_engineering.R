test_that("create_lag_features works correctly", {
  data <- data.frame(
    time = as.Date("2024-01-01") + 0:4,
    target = c(10, 20, 30, 40, 50)
  )

  lagged_data <- create_lag_features(data, "target", lags = 1:2)

  # Check new columns are created
  expect_true("target_lag1" %in% colnames(lagged_data))
  expect_true("target_lag2" %in% colnames(lagged_data))

  # Check lag values
  expect_equal(lagged_data$target_lag1, c(NA, 10, 20, 30, 40))
  expect_equal(lagged_data$target_lag2, c(NA, NA, 10, 20, 30))
})
