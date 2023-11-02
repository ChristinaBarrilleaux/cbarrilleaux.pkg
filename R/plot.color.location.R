#' Function Plots Crab Data 
#' 
#' Use this function to plot three columns of data using the crabs data set.
#' This plot will show the x and y axis, along with a column selected for data coloring. 
#' With this plot function, three crab characteristics can be visualized. 
#' 
#' @param data database being used (data frame)
#' @param columnx selected column for x axis
#' @param columny selected column for y axis
#' @param columnz selected column for color of data
#' @return plot The plot visualizing three crab characteristics
#' 
#' @export

crab_plot <- function(data, columnx, columny, columnz){
  plot <- data %>%
    na.omit(data) %>%
    select({{columnx}}, {{columny}}, {{columnz}}) %>% 
    ggplot(aes(x = {{columnx}}, y = {{columny}}, color = {{columnz}})) + geom_jitter() +
    scale_color_manual(values = c("blue", "orange"))
  return(plot)
}
