#' Function Plots Crab Data 
#' 
#' Use this function to plot two columns of data using the crabs data set but adds the color and sex as a facet plot.
#' This plot will show the x and y axis, along with a column selected for data coloring. 
#' With this plot function, two crab characteristics can be visualized along with the differences between sexes and colors. 
#' 
#' @param data data frame being used
#' @param columnx selected column for x axis
#' @param columny selected column for y axis
#' @return plot The plot visualizing crab characteristics with sex and color
#' 
#' @export

crab_xysl <- function(data, columnx, columny){
  clean_data <- data %>%
    na.omit()
  if (sum(is.na(clean_data)) == 0){
    plot <- clean_data %>%
      ggplot(aes(x = {{columnx}}, y = {{columny}}, color = color)) + geom_jitter() +
      scale_color_manual(values = c("blue", "orange"))  +
      theme_bw() + facet_wrap(facets =  vars(sex))
    return(plot)
  } else {
    print("NAs still present.")
  }
}