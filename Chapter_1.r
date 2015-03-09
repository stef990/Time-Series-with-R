# http://staff.elena.aut.ac.nz/Paul-Cowpertwait/ts/cbe.dat
# Use # for comments in R
#1.4.1
data(AirPassengers)
AP <- AirPassengers
AP

plot(AP, ylab = "Passengers (1000's)")

------------------------------------
# 1.4.2
www <- "http://staff.elena.aut.ac.nz/Paul-Cowpertwait/ts/Maine.dat"
Maine.month <- read.table(www, header = TRUE)
attach(Maine.month)
class(Maine.month)
Maine.month.ts <- ts(unemploy, start = c(1996,1),freq = 12) 
# create ts object, with start 1996, freq = 12 
# 
Maine.annual.ts <- aggregate(Maine.month.ts)/12

layout(1:2)
plot(Maine.month.ts, ylab = "unemployed (%)")
plot(Maine.annual.ts, ylab = "unemployed (%)")

Maine.Feb <- window(Maine.month.ts, start = c(1996,2),freq = TRUE)
Maine.Aug <- window(Maine.month.ts, start = c(1996,8), freq = TRUE)
Feb.ratio <- mean(Maine.Feb) / mean(Maine.month.ts)
Aug.ratio <- mean(Maine.Aug) / mean(Maine.month.ts)
