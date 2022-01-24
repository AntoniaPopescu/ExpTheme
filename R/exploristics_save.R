#' Save your Exploristics
#'
#' This function allows you to save your ggplot in predefined sizes
#' This function takes as arguments: a filename location where to 
#' save the plot to, the plot wanting to be saves, and a plotSize argument
#' that can be either portrait, square,or landscape
#' 
#' @keywords exploristics_save
#' @export


#This function allows you to save your ggplot in predefined sizes
exploristics_save = function(filename, myPlot, plotSize, ...){
  
  if (plotSize == "portrait") {
    width = 640
    height = 800
  }
  if (plotSize == "square") {
    width = 640
    height = 640
  }
  
  if (plotSize == "landscape") {
    width = 800
    height = 640
  }
  
  
  ggsave(filename = filename,
         plot = plotGrid,
         device = "jpeg",
         width = width,
         height = height,
         units = "px",
         ...)
}
