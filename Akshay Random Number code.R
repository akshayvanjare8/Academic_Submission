# _________________ RANDOM NUMBER GENRATION OF NEGATIVE BINOMIAL DISTRIBUTION ____________
#_______________________WITH BERNOULI AND GEOMETRIC GIDTRBUTION __________________________

# Geometric Generation (with Bernouli)

ber.gen<-function(p, size){
  X<-NULL
  for (i in 1:size){
    x<-ifelse(runif(1) < p, 1, 0)
    x<-append(X, x, after = length(x))
  }
  return(x)
}

geom.gen<-function(p, size){
  x<-NULL
  for(j in 1:size) {
    i = 0
    s = 0
    while(s < 1){
      s<-ber.gen(p,1)
      i=i+1
    }
    x<-append(x, i-1, after = length(x))
  }
  return(x)
}
mean(geom.gen(0.5, 500))
hist(geom.gen(0.5, 500))

# _______ Use above geometric distribution for negarive binomial 


# Negative Binomial

nb.gen<-function(r, p, size){
  X<-NULL
  for(i in 1:size)
    X<-append(X, sum(geom.gen(p, r)), after = length(X))
  return(X)
}
nb.gen(8, 0.9, 4)
mean(8, 0.9, 4)
hist(nb.gen(8, 0.9, 4))
