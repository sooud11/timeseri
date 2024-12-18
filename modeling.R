#' Fit a linear regression model
#'
#' Fits a simple or multiple linear regression model to the data.
#'
#' @param data A data frame.
#' @param formula A formula for the regression model.
#' @return A linear model object.
#' @export
fit_linear_model <- function(data, formula) {
  model <- lm(formula, data = data)

  # Return the model
  return(model)
}

