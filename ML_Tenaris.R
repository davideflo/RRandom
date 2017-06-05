#### ML assignment

data <- read.csv2("C:/Users/utente/Desktop/ccpp_dataset.csv", header = TRUE, sep = ";", stringsAsFactors = FALSE, colClasses = "character")

data$AT <- as.numeric(data$AT)
data$V <- as.numeric(data$V)
data$AP <- as.numeric(data$AP)
data$RH <- as.numeric(data$RH)
data$PE <- as.numeric(data$PE)

pairs(data)
pc <- prcomp(data,center = TRUE,scale. = TRUE)

plot(pc, type = "l")
plot(cumsum(pc$sdev/sum(pc$sdev)), type = "l")

hist(data$AT, breaks = 20)
hist(data$V, breaks = 20)
hist(data$AP, breaks = 20)
hist(data$RH, breaks = 20)
hist(data$PE, breaks = 20)

cor(data)

fit <- lm(data$PE ~ . ,data = data)
summary(fit)

plot(fit)
