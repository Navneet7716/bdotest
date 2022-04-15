### bs-hill.R file ###

source("E:/KL Even Sem/BDO(BTECH)/lab programs/labsession5/hill.R") # load the hill climbing methods
source("E:/KL Even Sem/BDO(BTECH)/lab programs/labsession5/functions.R") # load the profit function

# hill climbing for all bag prices, one run:
D=5; C=list(maxit=10000,REPORT=10000) # 10000 iterations
s=sample(1:1000,D,replace=TRUE) # initial search
ichange=function(par,lower,upper) # integer value change
{ hchange(par,lower,upper,rnorm,mean=0,sd=1) }
hclimbing(s,profit,change=ichange,lower=rep(1,D),
          upper=rep(1000,D),control=C,type="max")

# hill climbing for sphere, one run:
sphere=function(x) sum(x^2)
rastrigin=function(x) 10*length(x)+sum(x^2-10*cos(2*pi*x))
D=2; C=list(maxit=10000,REPORT=10000)
rchange=function(par,lower,upper) # real value change
{ hchange(par,lower,upper,rnorm,mean=0,sd=0.5,round=FALSE) }

s=runif(D,-5.2,5.2) # initial search
hclimbing(s,sphere,change=rchange,lower=rep(-5.2,D),
          upper=rep(5.2,D),control=C,type="min")
hclimbing(s,rastrigin,change=rchange,lower=rep(-5.2,D),
	  upper=rep(5.2,D),control=C,type="min")