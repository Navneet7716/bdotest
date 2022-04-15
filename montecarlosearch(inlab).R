source("E:/KL Even Sem/BDO(BTECH)/lab programs/Chapter3/blind.R") # load the blind search methods
source("E:/KL Even Sem/BDO(BTECH)/lab programs/Chapter3/montecarlo.R") # load the monte carlo method 
source("E:/KL Even Sem/BDO(BTECH)/lab programs/Chapter3/functions.R") # load the profit function

N=10000 # set the number of samples
cat("monte carlo search (N:",N,")\n")

# bag prices
cat("bag prices:")
S=mcsearch(N,rep(1,5),rep(1000,5),profit,"max") 
cat("s:",S$sol,"f:",S$eval,"\n")
