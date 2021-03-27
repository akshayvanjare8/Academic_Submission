path<-file.choose()   # Factor file

df1<-read.table(path, header = T)  

df<-df1[,-1]

#install.packages("psych")
library(psych)

KMO(df)

PC1<-principal(df, nfactors = 3, rotate = "varimax", cov =)

FA1<-factanal(df, 3, rotation = "varimax")

plot(PC1)

screeplot(princomp(cov(df)), type = "line")

biplot.psych(PC1)

FA1$factors

FA1$uniquenesses

FA1$n.obs

FA1$dof

FA1$method

FA1$call

FA1$rotmat
