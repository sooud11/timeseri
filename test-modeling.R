test_that("fit_linear_model works correctly", {
  set.seed(42)
  data <- data.frame(
    x = c(1, 2, 3, 4, 5),
    y = c(2.1, 4.2, 6.1, 7.9, 9.8)  # Slight noise added to y
  )

  # Fit the model
  model <- suppressWarnings(fit_linear_model(data, formula = y ~ x))

  # Check that the model is a linear model object
  expect_s3_class(model, "lm")

  # Dynamically compute the expected coefficient
  expected_coef <- cov(data$x, data$y) / var(data$x)

  # Debug: Print coefficient names and actual values
  print(names(coef(model)))
  print(coef(model))

  # Check coefficient names
  coef_names <- names(coef(model))
  expect_true("x" %in% coef_names, "The model should have a coefficient for 'x'")

  # Compare coefficients without attributes
  actual_coef <- coef(model)["x"]
  expect_equal(unname(actual_coef), unname(expected_coef), tolerance = 1e-8,
               info = paste("Expected coefficient for 'x' to be approximately", expected_coef))
})
