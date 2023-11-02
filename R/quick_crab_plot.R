#' Comparison plot for two numeric columns
#' 
#' Use this plot to quickly plot two numeric columns to view data correlation. 
#' This plot is useful for fast visualization for comparisons. 
#' 
#' @param data The data set crabs
#' @param column Column for X value
#' @param column1 Column for Y value
#' @return  X-Y plot
#'
#' @export

crab_plot <- function(data, columnx, columny){
  plot <- data %>%
    na.omit(data) %>%
    select({{columnx}}, {{columny}}) %>% 
    ggplot(aes(x = {{columnx}}, y = {{columny}})) + geom_point()
  return(plot)
}