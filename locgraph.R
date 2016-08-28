locs <- read.csv('loc.csv', header=TRUE, sep=",")
png("loc.png")
plot(locs)
dev.off()
