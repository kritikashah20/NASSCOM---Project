
pdata <- read.csv('parkinsons.data')
print(is.data.frame(pdata))
print(pdata)
print(ncol(pdata))
print(nrow(pdata))
str(pdata)
any(is.na(pdata))

attach(pdata)
x = matrix(c(pdata$MDVP.Fo.Hz., pdata$MDVP.Fhi.Hz., pdata$MDVP.Flo.Hz., pdata$MDVP.Jitter..., pdata$MDVP.Jitter.Abs., pdata$MDVP.RAP, pdata$MDVP.PPQ, pdata$Jitter.DDP, pdata$MDVP.Shimmer, pdata$MDVP.Shimmer.dB., pdata$Shimmer.APQ3, pdata$Shimmer.APQ5, pdata$MDVP.APQ, pdata$Shimmer.DDA, pdata$NHR, pdata$HNR, pdata$RPDE, pdata$DFA, pdata$spread1, pdata$spread2, pdata$D2, pdata$PPE), nrow = 195)
colnames(x) <- c("MDVP.Fo.Hz.", "MDVP.Fhi.Hz.", "MDVP.Flo.Hz.", "MDVP.Jitter...", "MDVP.Jitter.Abs.", "MDVP.RAP", "MDVP.PPQ", "Jitter.DDP", "MDVP.Shimmer", "MDVP.Shimmer.dB.", "Shimmer.APQ3", "Shimmer.APQ5", "MDVP.APQ", "Shimmer.DDA", "NHR", "HNR", "RPDE", "DFA", "spread1", "spread2", "D2", "PPE" )
x

y = matrix(c(pdata$status))
colnames(y) <- c("status")
y

res <- cor(x, y)
sort(res, decreasing = TRUE, index.return = TRUE)
cor.test(x, y)

library(tidyverse)