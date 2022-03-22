install.packages("dplyr")
library("dplyr")

partD = read.csv("CombinedDNAfiless.csv", header=FALSE) #Import file from D 
transmute(partD, a = partD[,1]/1000, g = partD[,2]/1000, c= partD[,3]/1000, t=partD[,4]/1000) #sort out the proportions of each nucleotide 

pdf(file = "/Users/isabellaasselstine/Desktop/assignment1/graphs.pdf", width = 4, height = 4)

par(mfrow=c(2,2))
Agraph = hist(partD[,1]/1000)
Ggraph = hist(partD[,2]/1000)
Cgraph = hist(partD[,3]/1000)
Tgraph = hist(partD[,4]/1000)
dev.off()