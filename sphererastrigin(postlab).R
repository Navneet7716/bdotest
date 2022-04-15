source("E:/KL Even Sem/BDO(BTECH)/lab programs/Chapter3/blind.R") # load the blind search methods
source("E:/KL Even Sem/BDO(BTECH)/lab programs/Chapter3/montecarlo.R") # load the monte carlo method 
source("E:/KL Even Sem/BDO(BTECH)/lab programs/Chapter3/functions.R") # load the profit function

N=10000 # set the number of samples
cat("monte carlo search (N:",N,")\n")
sphere=function(x) sum(x^2)
rastrigin=function(x) 10*length(x)+sum(x^2-10*cos(2*pi*x))

D=c(2,30)
label="sphere"
for(i in 1:length(D))
{ S=mcsearch(N,rep(-5.2,D[i]),rep(5.2,D[i]),sphere,"min") 
cat(label,"D:",D[i],"s:",S$sol[1:2],"f:",S$eval,"\n")
}
label="rastrigin"
for(i in 1:length(D))
{ S=mcsearch(N,rep(-5.2,D[i]),rep(5.2,D[i]),rastrigin,"min") 
cat(label,"D:",D[i],"s:",S$sol[1:2],"f:",S$eval,"\n")
}
