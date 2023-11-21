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

clean <- function(crab_data) {
  clean_data <- crab_data %>% 
    na.omit(data)
  if (sum(is.na(crab_data)) == 0){
    return(clean_data)
  } else {
    print("NAs still present.")
  }
}
