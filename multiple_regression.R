# Multiple regression
x <- read.table("./data/sleep_in_mammals.txt", header = TRUE)
LifeSpan <- x$LifeSpan
BodyWt <- x$BodyWt
TotalSleep <- x$TotalSleep
pdf('regression.pdf')

# Show those data with histgram
par(mfrow=c(1,3))
hist(LifeSpan)
hist(BodyWt)
hist(TotalSleep)

# Logarithmic transformation
LifeSpan.log <- log10(LifeSpan)
BodyWt.log <- log10(BodyWt)

par(mfrow = c(1, 3))
hist(LifeSpan.log)
hist(BodyWt.log)
hist(TotalSleep)

# Standardize
BodyWt.log.std <- scale(BodyWt.log)
TotalSleep.std <- scale(TotalSleep)

# LifeSpan.log is response variable
# TotalSleep.std and BodyWt.log.std are Exlanatory variables
m <- lm(LifeSpan.log ~ TotalSleep.std + BodyWt.log.std)
str(summary(m))

par(mfrow = c(1, 2))
plot(LifeSpan.log, BodyWt.log.std, ylim = c(-3, 3))
plot(LifeSpan.log, TotalSleep.std, ylim = c(-3, 3))