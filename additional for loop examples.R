# FOR LOOP WORK 
#comparing two coins 
aCoin<- c('heads', 'tail')

set.seed(123)
coin1 <- sample( aCoin, size = 1000, replace = TRUE)
coin2 <- sample( aCoin, size = 1000, replace = TRUE)
#use set seed so you can repeat the same numbers and random sample 

#create data frame 
twoCoins <- data.frame( coin1, coin2 )

coin1 == 'heads' #would return all True or Falses, a logical 
sum (coin1 == coin2 ) # to see how many times they were equal

# or 


print(myCounter)


#how many times did both coins land on heads 


# we could use FALSE & FALSE 

head(coin1 == 'heads', 10 )
head(coin2 == 'heads', 10 )
head((coin1 == 'heads') & (coin2 == 'heads', 10 ))
sum()

bothheads <- 0 

for ( i in 1:length(coin1) ) { 
  if (coin1 [i] == 'heads') & (coin2[i] == 'heads')) {
    bothheads <- bothheads + 1 
  }
}
myCounter <- 0 
for (i in 1:length(coin1) ) { 
  if ( coin1 [i] == 'heads') & (coin2[i] == 'heads') { 
    myCounter <- myCounter + 1
  }
}

for (i in 1:length(coin1) ) {
  if ( coin1 [i] == 'heads' ) {
    if (coin2[i] == 'heads'){ 
      mycounter <- mycounter + 1 
    }
  }
}





# in coin1, how many times did i flip "Heads immediately adter 
# ... slipping "Heads"? 


for (i in 1:length(coin1) )
  
  
  
  
  # gradeExample.csv
  # create a new column with Final Score (average of two exams )
  # create a 2nd column w/ letter grade 
  #... 90+ A 
  
  GRADEEXAMPLE <- read.csv('gradeExample.csv')

#download csv 

> setwd('~/Downloads/')
> D <- read.csv('gradeExample.csv')

#create a new column 

D$finalScore <- (D$exam1 + D$exam2)/2

#create column with letter grade 
# set up empty vector 
D$lettergrade <- NA
for (i in 1:nrow(D)) {
  if (finalScore[i] >= 90 ) { 
    # record grade as A 
    D$lettergrade[i] <- 'A'
  }
}
--------------------------------------------------------------------------------
  #Question 1 (start with small nSims so you  computer will run them fast )
  
  aDie <- 1:6 
nSims <- 10000 
roundscores <- rep(NA, times = nSims)


for ( i in 1:nSims ) { 
  die1 <- sample( aDie , size = 1 )
  die2 <- sample(aDie , size = 1 ) 
  thisRound <- die1 * die2 
  roundscores[i] <- thisRound
}

mean(roundscores)





install.packages("ggplot")
require( ggplot2 )
D <- as.data.frame(diamonds)

# - how many premium cut diamonds priced below 50 

cheapPrem <- subset(D, (cut == 'Premium') & (price <500))
nrow(cheapPrem)

-------------------------------------------
  
  # step 1 create a price per carat column 
  
  D$ppc <- D$price /D$carat 

#step2 

ppcDF <- aggregate(ppc ~ color , data = D, FUN = mean )

#step3 

ppcDF[ppcDF$ppc == max(ppcDF$ppc), ]
ppc[order(-ppcDF$ppc), ]
-------------------------------------------------------------------------------
  
# carat mean 
spendyD <- subset( D, price > 18000)

mean( spendyD$carat )


-------------------------------------------------------------------------------
  
  # mean for adjusted price 
  D$adjprice <- rep(NA, times= nrow(D)) 
for (i in 1:nrow(D) ) {
  if (D[i, 'cut'] == 'Ideal') {
    D[i, adjprice]<- D[i, 'price']*.76
  } else { 
    D[i, 'adjprice'] <- D[i, 'price']
  }
}

mean(D$adjprice)

-------------------------------------------------------------------------
  
  # figure out squared division 
  
  D$ssd <- (D$x - 4 )^2 + (D$y - 4 )^2 + (D$z - 4 )^2

#step 2 
D[ D$ssd == min( D$ssd ), ]
head( D[order(D$ssd), ] )

-----------------------------------------------------------------------------
  
  setwd('/Users/lexidingle/Desktop')
comp <- read.csv('competitors.csv')



competitorMean <- rep(NA, times = 100)

for (i in 1:100) {
  filename <- i
  DF <- read.csv( paste("~/Desktop/scores/", filename, ".csv", sep=""))
  competitorMean[i] <- mean(DF$score)
}
max(competitorMean)
# 79 

which( competitorMean == 79 )

#58
firstname <- rep(NA, times= 1)


for ( i in 1:length(comp$id) ) { 
  if (comp$id[i] == '58')
    firstname <- comp$first_name[i]
  lastname <- comp$last_name[i]
}


lastname <- rep(NA, times= 1)

for ( i in 1:length(comp$id) ) { 
  if (comp$id[i] == '58')
    lastname <- comp$last_name[i]
}

---------------------------------------------------------------------------------
  
  
  sum(competitorMean > 60 )
  


----------------------------------------------------------------------------------
  
  fish$Species.grouped <- rep(NA, times = nrows(fish))


for ( i in 1: nrow(fish)) { 
  if (fish$Species[i] == 'Perch') { 
    fish$Species.grouped[i] <- fish$Species[i]
  }
  else if( fish$Species[i] == 'Bream') {
    fish$Species.grouped[i] <- fish$Species[i]
  }
  else 
    fish$Species.grouped[i] <- 'other'
}

summary( lm( Weight ~ Species.grouped + Width, data = fish))

= -448.970 + (34.628 * 1) + (196.550 * 6 )

-----------------------------------------------------------------------------
  
  setwd('/Users/lexidingle/Downloads')
apple <- read.csv('appleStore.csv')

FirstBuy <- nrow(apple[apple$Buy == 'Yes' & apple$Prior == 'No', ])/nrow(apple)

29 people 
29/200


SecondBuy <- nrow(apple[apple$Buy == 'Yes' & apple$Prior == 'Yes', ])/nrow(apple)
58
58/200
----------------------------------------------------------------------------------
  
  
  




