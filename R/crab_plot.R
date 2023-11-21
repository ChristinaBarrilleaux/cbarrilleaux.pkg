#' Comparison plot for two numeric columns
#' 
#' Use this plot to quickly plot two numeric columns to view data correlation with a color option. 
#' This plot is useful for fast visualization for comparisons between three variables.                                    iuk/. 9000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000n88888888888888888niuop[]\
#' 
#' @param data The data set crabs
#' @param columnx Column for X value
#' @param columny Column for Y value
#' @param columnz Column for z value
#' @return X-Y-Z plot
#'
#' @export

crab_plot <- function(crab_data, columnx, columny, columnz){
  clean_data <- crab_data %>%
    na.omit()
  if (sum(is.na(clean_data)) == 0){
    plot <- clean_data %>%   
      select({{columnx}}, {{columny}}, {{columnz}}) %>% 
      ggplot(aes(x = {{columnx}}, y = {{columny}}, color = {{columnz}})) + geom_jitter() +
      scale_color_manual(values = c("blue", "orange"))
    return(plot)
  } else {
    print("NAs still present.")
  }
}
