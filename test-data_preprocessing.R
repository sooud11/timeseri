test_that("preprocess_data works correctly", {
  data <- data.frame(
    time = c("2024-01-01", "2024-01-02", NA, "2024-01-04"),
    target = c(10, 20, NA, 40)
  )
  cleaned_data <- preprocess_data(data, "time", "target")
  expect_equal(nrow(cleaned_data), 3)
})
