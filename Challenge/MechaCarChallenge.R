
#MPG Regression
MechaCar <- read.csv(file="Resources/MechaCar_mpg.csv")

# import ggplot2 library
library(ggplot2)
# import dplyr 
library(dplyr)


#multiple linear regression model
multiple <- lm(mpg ~ vehicle.length + vehicle.weight + spoiler.angle + ground.clearance, data=MechaCar)
summary(multiple)


# Suspension Coil Summary
suspensionCoil <- read.csv(file="Resources/Suspension_Coil.csv")

# statistics summary of PSI
summarise(suspensionCoil,Min.=min(suspensionCoil$PSI),
          Max.=max(suspensionCoil$PSI),Mean=mean(suspensionCoil$PSI),
          Median=median(suspensionCoil$PSI),Variance=var(suspensionCoil$PSI),
          SD=sd(suspensionCoil$PSI,))

# suspension coil T-Test with population mean as 1500
t.test(suspensionCoil$PSI, mu=1500)
