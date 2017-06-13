library(ggplot2)
locs <- read.csv('loc.csv', header=TRUE, sep=",")
Languages <- locs$language
png("loc.png")
qplot(x =locs$language,y =locs$LoC, color=Languages, xlab = "Language", ylab = "Lines Of Code", main = commandArgs(TRUE)[1], geom = "boxplot")
dev.off()
