theme_jaz <- function() {
 theme_classic(base_size = 18, base_family = "Lato Bold") %+replace%
  theme(plot.title = element_text(hjust = 0.5, margin = margin(0,0,15,0)),
        plot.background = element_rect(fill = "transparent"),
        panel.background = element_rect(fill = "transparent"),
        legend.background = element_rect(fill = "transparent"),
        legend.key = element_rect(fill = "transparent", colour = NA),
        legend.text = element_text(size = 12),
        strip.background = element_rect(fill = "light grey"),
        strip.text = element_text (colour = "black") ,
        axis.text.x = element_text(size = 14, colour = "black"),
        axis.text.y = element_text(size = 14, colour = "black")
  )
}
  
theme_jazpres <- function() {
  theme_dark(base_size = 28, base_family = "Helvetica") %+replace%
    theme(plot.title = element_text(colour = "white", hjust = 0.5, margin=margin(0,0,20,0)),
          plot.margin = unit(c(1, 1, 1, 1), "lines"),
          plot.background = element_rect(fill = "black"),
          panel.background = element_rect(fill = "black"),
          legend.background = element_rect(fill = "grey38", colour = "white"),
          legend.key = element_rect(fill = "grey38", colour = "white"),
          legend.text = element_text(colour = "white", size = 15),
          legend.title = element_text(colour = "White", size = 20),
          strip.background = element_rect(fill = "light grey"),
          strip.text = element_text (colour = "black") ,
          axis.text.x = element_text(size = 28, colour = "white"),
          axis.text.y = element_text(size = 28, colour = "white")
    )
}

# You should not have plots in your themes file. 

# ggplot() +
#   geom_point(data = mpg, aes(x = cty, y = hwy, colour = factor(cyl))) +
#   labs(title = "Jazmin's Theme") + 
#   theme_jaz()
# 
# ggplot() +
#   geom_point(data = mpg, aes(x = cty, y = hwy, colour = factor(cyl))) +
#   labs(title = "Jazmin's Presentation") + 
#   theme_jazpres()
