# loading data frame
dat <- read.csv("subsetdataLexMidpointF0.csv", sep = ",")

# load package for plots
library(ggplot2)

# visualizing factors: vowel onset of F0  vs.	midpoint F0 with random factor 'speaker'
# quick plot
qplot(vowelOnsetF0, midpointF0, data = datN, color = Speaker)

# Same visualization with ggplot specifying more options
# Option for saving the file as .jpeg
jpeg(filename = "MidpointF0.jpeg", height=1600, width=2000, res = 300)
ggplot() + geom_point(data = datN, aes(x = vowelOnsetF0, y = midpointF0, color = Speaker)) +
  ggtitle("Midpoint of fundamental frequency")+
  theme(plot.title = element_text(hjust = 0.5))
# command to close the plot
dev.off()