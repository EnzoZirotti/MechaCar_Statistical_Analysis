library(dplyr)
library(tidyverse)

MechaCarTable <- read.csv(file='C:/Users/zirot/Classwork/MechaCar_Statistical_Analysis/MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)



model <- lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=MechaCarTable) #generate multiple linear regression model





summary <- summary(lm(mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length,data=MechaCarTable)) #generate summary statistics



ggplot(MechaCarTable, aes(x=mpg, y = AWD)) + geom_point()




SuspensionTable <- read.csv(file='C:/Users/zirot/Classwork/MechaCar_Statistical_Analysis/Suspension_Coil.csv',check.names=F,stringsAsFactors = F)


total_summary <- summarize(SuspensionTable, mean(PSI),median(PSI),var(PSI),sd(PSI))

total_summary







lot_summary <- SuspensionTable %>% group_by(Manufacturing_Lot) %>% summarize(mean(PSI),median(PSI),var(PSI),sd(PSI), .groups = 'keep') #create summary table



## 2nd way of doing it.
#lot_summary <- group_by(SuspensionTable,Manufacturing_Lot)

#lot_summary_DataFrame <- summarize(lot_summary, mean(PSI),median(PSI),var(PSI),sd(PSI))

#lot_summary_DataFrame



#t.test(subset(lot_summary$Lot1),mu=mean(PSI)(subset(population_table$Miles_Driven))) #compare sample versus population means
t.test(SuspensionTable$PSI, mu=1500)

subset(SuspensionTable, Manufacturing_Lot = "Lot1", select = "PSI")

#t.test(subset(SuspensionTable, Manufacturing_Lot = "Lot1", select = "PSI"), mu=1500)

t.test(subset(SuspensionTable, Manufacturing_Lot == "Lot1")$PSI, mu=1500)

t.test(subset(SuspensionTable, Manufacturing_Lot == "Lot2")$PSI, mu=1500)

t.test(subset(SuspensionTable, Manufacturing_Lot == "Lot3")$PSI, mu=1500)




      








