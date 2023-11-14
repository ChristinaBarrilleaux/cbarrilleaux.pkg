#' Function for linear models with crabs data
#'
#' Use this function to produce a linear model for numeric crabs data. 
#' This function will produce a statistical analysis of the data entered into the function and predict correlations. 
#'
#' @param columnx The column for the dependent variable 
#' @param columny the column for the independent variable
#' @param data the data set crabs 
#' @return  Linear model for comparisons in crabs data
#'
#' @export

crabs_model <- function(columnx, columny, data) {
  model <- data %>% 
    na.omit(data) %>% 
    lm(formula = as.formula(paste(x, "~", y)))
  if (sum(is.na(data)) == 0){
    return(model)
  } else {
    print("NAs interferring with linear model.")
  }
}