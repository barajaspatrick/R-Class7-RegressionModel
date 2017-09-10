require(datasets); data("InsectSprays"); require(stats)

g = ggplot(data = InsectSprays, aes(y=count, x=spray, fill=spray))+
        geom_violin(colour = "black", size = 2)+
        xlab("Type of Spray") + ylab("insect count")
print(g)

###############################################################################
## now we can compare groups
summary(lm(count ~ spray, data = InsectSprays))$coef
        ## notice how every group in comparision is relative to spray "A":
        
        # Estimate Std. Error    t value     Pr(>|t|)
        # (Intercept)  14.5000000   1.132156 12.8074279 1.470512e-19
        # sprayB        0.8333333   1.601110  0.5204724 6.044761e-01
        # sprayC      -12.4166667   1.601110 -7.7550382 7.266893e-11
        # sprayD       -9.5833333   1.601110 -5.9854322 9.816910e-08
        # sprayE      -11.0000000   1.601110 -6.8702352 2.753922e-09
        # sprayF        2.1666667   1.601110  1.3532281 1.805998e-01

###############################################################################
## but what if we want to decide what groups to comapre on our own?

## hard coding a dummy variable












