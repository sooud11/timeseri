test_that("adf_test works correctly", {
  ts_data <- cumsum(rnorm(100))  # Non-stationary series

  result <- adf_test(ts_data)

  # Check result is a list with expected fields
  expect_type(result, "list")
  expect_named(result, c("statistic", "p_value"))

  # Check statistic and p-value are numeric
  expect_type(result$statistic, "double")
  expect_type(result$p_value, "double")
})
