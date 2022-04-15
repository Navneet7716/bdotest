source("E:/KL Even Sem/BDO(BTECH)/lab programs/Chapter3/blind.R") # load the blind search methods
source("E:/KL Even Sem/BDO(BTECH)/lab programs/Chapter3/grid.R") # load the grid search methods
source("E:/KL Even Sem/BDO(BTECH)/lab programs/Chapter3/functions.R") # load the profit function

# nested grid search with 3 levels and initial step of 500$
PTM=proc.time() # start clock
s3=ngsearch(3,rep(500,5),rep(1,5),rep(1000,5),profit,"max") 
sec=(proc.time()-PTM)[3] # get seconds elapsed
cat("ngsearch best s:",s3$sol,"f:",s3$eval,"time:",sec,"s\n")
