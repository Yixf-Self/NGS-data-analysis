 x = read.table('HT_WT_210_SN.txt' , colClasses = 'numeric')
 y = read.table('Heat_WT_sum.txt' , colClasses = 'numeric')
 H_210 = as.matrix(x)
 H_sum = as.matrix(y)
 p = cor.test(c(H_210), c(H_sum))
 cor.test(c(H_210), c(H_sum))
 plot(c(H_210), c(H_sum))
 abline(lm(H_210~H_sum), col = "blue", lwd = 2)
 