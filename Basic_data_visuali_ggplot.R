# loading data fram
dat <- read.csv("datLexMidpoint_ST_slope.csv", sep = ",")


datN <- dat[dat$Label == "n" & dat$SentenceType == "F_H" , ]
datN <- droplevels(datN)

write.csv(datN, "/Users/Siri/Documents/Coding/R/R_visualizations/subsetdataLexMidpointF0.csv")


# visualizing factors: StartOfDrop vs.	TCoG
library(ggplot2)

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