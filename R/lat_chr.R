#' Function to mutate the location from numeric to character
#'
#' Use this function to create a new column for the Latitude character and not numeric data. 
#' This function will not delete the location from the data set, but it will select all the columns except the numeric latitude.
#'
#' @param data The data set crabs
#' @param column Column Latitude 
#' @return  New column with Latitude as a character 
#'
#' @export

lat_chr <- function(crab_data, column) {
  location <- crab_data %>% 
    mutate(latitude = as.character({{column}}))
  if (class(location$latitude) == "character") {
    return(location)
  } else {
    print("Try again.")
  }
}

