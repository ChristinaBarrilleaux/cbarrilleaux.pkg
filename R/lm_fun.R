#' Function for linear models with crabs data
#'
#' Use this function to produce a linear model for numeric crabs data. 
#' This function will produce a statistical analysis of the data entered into the function and predict correlations. 
#'
#' @param df the data set crabs
#' @param dependent The column for the dependent variable
#' @param independent_cols the column for the independent variable
#' @return  Linear model for comparisons in crabs data
#'
#' @export

lm_fun <- function(crab_data, dependent, independent_cols) {
  model <- crab_data %>% 
    select(a = {{dependent}}, {{independent_cols}}) %>% 
    lm(a~., crab_data = .) %>% 
    summary()
  if (sum(is.na(df)) == 0){
    return(model)
  } else {
    print("NAs interferring with linear model.")
  }
}
