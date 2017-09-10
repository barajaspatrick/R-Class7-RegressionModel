
library(ggplot2)
library(UsingR)

data(diamond)

y <- diamond$price ## vector with prices
x <- diamond$carat
n <- length(y) ## number of values in prices vector

fit <- lm(y ~ x) ## create linear model object
e <- resid(fit) ## extract model residuals saves in vector object?
yhat <- predict(fit) ## yhat is a vector of predictions at observed fit


sum(e) ## note that the sum of the residuals is pretty close to zero

## note this is also a way to find residuals but dont need to know this method:

###############################################################################

plot(diamond$carat, diamond$price,
        xlab = "Mass (carats)",
        ylab = "Price (Sin $)",
        bg = "lightblue",
        col = "black", cex = 1.1, pch = 21, frame = FALSE)
abline(fit, lwd = 2)

## this adds red lines for the residuals
for (i in 1 : n) {
        lines(c(x[i], x[i]), c(y[i], yhat[i]), col = "red", lwd = 2)
}

###############################################################################

        
        
        