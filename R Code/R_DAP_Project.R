library(UsingR)
library(ggplot2)

fires <- read.table("forestfires.txt", header = TRUE)
fires$logarea <- log(fires$area + 1)

# Logarithm-transform
summary(fires$area)
summary(fires$logarea)
hist(fires$area, main = "Original Area", xlab = "Area")
hist(fires$logarea, main = "Logarithm-transformed Area", xlab = "log(Area + 1)")

plot(logarea ~ temp, data = fires, xlab = "Temperature (Celsius)", ylab = "Log(Area + 1)", main = "Temperature vs. Logarithm-transformed Area", pch = 16, col = "red")
abline(lm(logarea ~ temp, data = fires), col = "red")

plot(logarea ~ RH, data = fires, xlab = "Humidity (%)", ylab = "Log(Area + 1)", main = "Relative Humidity vs. Logarithm-transformed Area", pch = 16, col = "green")
abline(lm(logarea ~ RH, data = fires), col = "green")

plot(logarea ~ wind, data = fires, xlab = "Wind Speed (km/h)", ylab = "Log(Area + 1)", main = "Wind Speed vs. Logarithm-transformed Area", pch = 16, col = "blue")
abline(lm(logarea ~ wind, data = fires), col = "blue")

plot(logarea ~ rain, data = fires, xlab = "Rain (mm/m^2)", ylab = "Log(Area + 1)", main = "Rain vs. Logarithm-transformed Area", pch = 16, col = "purple")
abline(lm(logarea ~ rain, data = fires), col = "purple")

weatherobs <- lm(logarea ~ temp + RH + wind + rain, data = fires)
summary(weatherobs)
plot(weatherobs)
pairs(fires[, c("temp", "RH", "wind", "rain", "logarea")], main = "Meteorological Variables vs. Logarithm-transformed Area")

correlations <- cor(fires[, c("temp", "RH", "wind", "rain", "logarea")])
print(correlations)