test_that("compute_rmse works correctly", {
  actual <- c(1, 2, 3, 4, 5)
  predicted <- c(1.1, 1.9, 3.2, 4.1, 4.8)

  rmse <- compute_rmse(actual, predicted)

  # Check RMSE is numeric
  expect_type(rmse, "double")

  # Check RMSE calculation
  expect_equal(rmse, sqrt(mean((actual - predicted)^2)))
})
