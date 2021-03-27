# _______________ Durbin Watson Test & Breuch Pagan Test _____________

data<-cars

str(data)

View(data)

summary(data)

model=lm(speed~.,data = data)
model
summary(model)


## Heteroscedasticity Check ( Bruech - Pagan Test) ###

library("zoo")
library("lmtest")


bptest(model)#H0: There is homoscedastic (constance variance)

## Check Autocorrelation ( Durbin - Watson Test) ##

dwtest(model)


