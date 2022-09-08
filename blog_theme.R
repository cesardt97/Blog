library(ggplot2)

colors <- c('#4F4F4F', '#f6f4f4', '#3772ff')

theme_blog <- function(grid_d = "Y"){
  hrbrthemes::theme_ipsum_tw(grid = grid_d) +
    theme(plot.caption = element_text(hjust = 0, face = 'italic'),
          axis.line.x = element_line(
            colour = "black",
            size = 0.5,
            linetype = "solid"),
          axis.line.y = element_line(
            colour = "black",
            size = 0.5,
            linetype = "solid"),
          panel.grid.minor = element_blank(),
          panel.grid.major = element_line(colour = "gray", linetype = "dotted"),
          panel.background = element_blank(),
          panel.border = element_blank(), rect = element_blank(),
          plot.background = element_rect(fill = colors[2], color = colors[2])
    )
}
# 
# mtcars |> 
#   ggplot(aes(x = mpg, y = wt)) +
#   geom_point(color = "black") +
# # scale_fill_manual(values = c("#F4F4F4")) +
#   labs(x="Fuel efficiency (mpg)", y="Weight (tons)",
#        title="Seminal ggplot2 scatterplot example",
#        subtitle="A plot that is only useful for demonstration purposes",
#        caption="Source: author's elaboration") +
#   theme_blog() 
