theme_blue <- function() {
  theme(
    panel.grid.minor = element_blank(),
    panel.grid.major = element_blank(),
    legend.title = element_text(color = "#F7F8F9"),
    legend.text = element_text(color = "#F7F8F9"),
    legend.background = element_rect(fill = "#01364C", colour = NA),
    plot.background = element_rect(fill = "#01364C", colour = NA),
    panel.background = element_rect(fill = "#01364C", colour = NA),
    panel.border = element_rect(
      fill = NA,
      color = "#01364C",
      linewidth = 0.5,
      linetype = "solid"
    ),
    axis.title = element_text(color = "#F7F8F9"),
    axis.text = element_text(color = "#F7F8F9")
  ) 
}

theme_blue_void <- function() {
  theme_void() %+replace%
    theme(
      plot.background = element_rect(fill = "#01364C", colour = NA),
      panel.background = element_rect(fill = "#01364C", colour = NA),
      panel.border = element_rect(
        fill = NA,
        color = "#01364C",
        linewidth = 0.5,
        linetype = "solid"),
      
      legend.position = "none")
}
