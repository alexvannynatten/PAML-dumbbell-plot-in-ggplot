## Plots clade model dN/dS estimates by gene
## dumbbell plot format
## Last updated 20220523 by avn

library(tidyverse)

dnds <- read.csv("Snake_Reptile_CmC.csv")

# Transforms to wide format for plotting lines
dnds_line <- spread(dnds, key = Clade, value = dNdS)

## Plots the dN/dS values for each clade by gene and grouped by photoreceptor class
ggplot() +
	# Plots lines between dN/dS values
	geom_segment(
		data = dnds_line,
			aes(x = Foreground, 
				y = Gene_name, 
				xend = Background, 
				yend = Gene_name, 
				colour = Gene_class), 
			size=2.5) +
	# Plots the dN/dS for both clades as points
	geom_point(
		data = dnds,
			aes(x=dNdS, 
				y=Gene_name, 
				fill=Clade),
		size=2.5, 
		shape = 21) + 
	# Colour scheme for the different photoreceptor classes
	scale_color_manual(values=c('red', 'blue', 'grey40')) +
	# Coloiur scheme for the background and foreground dN/dS
	scale_fill_manual(values=c('white','black')) +
	# Groups data by photoreceptor class
	facet_grid(scales="free_y",space="free_y", facets = Gene_class ~ .) +
	# Scales axis and sets the aesthetics for the chart
	scale_x_continuous(limits=c(0, 2),breaks=seq(0, 2, 1)) +
	theme(axis.text.x = element_text(angle = 0, hjust = 0.5), 
		panel.background = element_rect(fill = "white"),
		panel.grid.major = element_line(size = 3, colour = "grey90"),
		panel.grid.minor.x = element_blank(),
		panel.grid.major.x = element_line(colour = "white",size = 0.5),
		axis.ticks.x = element_blank(),
		axis.ticks.y = element_blank(),
		axis.title.y = element_blank())

ggsave('Snake_Reptile_CmC_dumbbell_plot.pdf')

