library(ggplot2)
file_in <- read.csv("trading_performance.csv")

colnames_in = colnames(file_in)

for (col in colnames_in){
    if (col == "Date") {
        next
    }
    jpeg(paste("./imgs/",col,".jpg",sep = ""))
    tmp = file_in[,col]
    trading_hist = tmp[tmp!=0]
    trading_hist = c(0,trading_hist)
    plot(trading_hist, xlab = "Days", ylab = "gains/losses ($)",
        type = "l", col = "red", main = col)
    dev.off()
}
