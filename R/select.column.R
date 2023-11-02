#' Function selects and mutates a column. 
#' 
#' Use the data to mutate a column as divided by 1000. 
#' Returns a new column with a column divided by 1000 as new_col. 
#' Typically used for mutating a weight column unit. 
#' 
#' @param data database being used (data frame)
#' @param columns selected columns to mutate 
#' @return clean The cleaned and mutated columns with a new mutated column (dataframe)
#' 
#' @export

select_col <- function(data, columns) { 
  clean <- data %>% 
    na.omit(data) %>% 
    select(all_of({{columns}})) %>% 
    mutate(new_col = {{column}}/1000)
  return(clean)
}