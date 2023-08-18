file_in <- read.csv("trading_performance.csv")

colnames_in = colnames(file_in)[-c(10,11)]

for (col in colnames_in){
    jpeg(paste("./imgs/",col,".jpg",sep = ""))
    plot(file_in[,col]~c(1:nrow(file_in)), xlab = "index", ylab = col, type = "l")
    dev.off()
}
