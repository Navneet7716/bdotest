source("E:/KL Even Sem/BDO(BTECH)/lab programs/Chapter3/blind.R") # load the blind search methods
source("E:/KL Even Sem/BDO(BTECH)/lab programs/Chapter3/grid.R") # load the grid search methods
source("E:/KL Even Sem/BDO(BTECH)/lab programs/Chapter3/functions.R") # load the profit function

# grid search for all bag prices, step of 100$
PTM=proc.time() # start clock
S1=gsearch(rep(100,5),rep(1,5),rep(1000,5),profit,"max") 
sec=(proc.time()-PTM)[3] # get seconds elapsed
cat("gsearch best s:",S1$sol,"f:",S1$eval,"time:",sec,"s\n")
