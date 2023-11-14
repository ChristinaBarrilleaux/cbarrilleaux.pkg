#' Function cleans data
#' 
#' Use this function to quickly remove NA values from data. 
#' Returns data without NA. 
#' It is suggested to assign this to a new variable. 
#' 
#' @param data The data set being cleaned
#' @return Data frame without NA values
#' 
#' @export 

clean <- function(data) {
  clean <- data %>% 
    na.omit(data)
  if (sum(is.na(data)) == 0){
    return(clean)
  } else {
    print("NAs still present.")
  }
}