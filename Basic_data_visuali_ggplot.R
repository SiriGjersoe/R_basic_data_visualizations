# loading data fram
dat <- read.csv("datLexMidpoint_ST_slope.csv", sep = ",")

# visualizing factors: StartOfDrop vs.	TCoG
library(ggplot2)

# quick plot
qplot(vowelOnsetF0, midpointF0, data = dat, color = Speaker)

# Same visualization with ggplot specifying more options
# Option for saving the file as .jpeg
jpeg(filename = "MidpointF0.jpeg", height=1600, width=2000, res = 300)
ggplot() + geom_point(data = dat, aes(x = vowelOnsetF0, y = midpointF0, color = Speaker)) +
  ggtitle("Midpoint of fundamental frequency")+
  theme(plot.title = element_text(hjust = 0.5))
# command to close the plot
dev.off()