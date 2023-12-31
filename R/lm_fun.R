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

lm_function <- function(df, dependent, independent_cols) {
  model <- df %>% 
    select(a = {{dependent}}, {{independent_cols}}) %>% 
    lm(a~., data = .) %>% 
    summary()
  if (sum(is.na(df)) == 0){
    return(model)
  } else {
    print("NAs interferring with linear model.")
  }
}
