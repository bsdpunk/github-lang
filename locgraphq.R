library(ggplot2)
library(scales)
locs <- read.csv('loc.csv', header=TRUE, sep=",")
Languages <- locs$language
q <- qplot(x =locs$language,y =locs$LoC, color=Languages, xlab = "Language", ylab = "Lines Of Code", main = commandArgs(TRUE)[1], geom = "boxplot") + theme(axis.text.x = element_text(angle = 90, hjust = 1)) + scale_y_continuous(labels = comma)
png("loc.png")
q
dev.off()
