# For loops
#this works for 1;10 
aVec <- 2:11 
for (i in aVec ) { 
	if ( i > 5) { 
		aVec[i] <- 13
		}
	}
	
print(aVec)



#if we start with numbers other than one we need to specify we want whats in the vector 
# not the vector itself 

aVec <- 10:1 
theAddress <- 1 
for ( i in aVec) {
	if ( i > 5 ) {
		aVec[ theAddress] <- 13
	}
	theAddress <- theAddress +1
}
print(aVec)


# we can also write it as #did not run correctly 
aVec <- 10:1 
theAddress <- 1 
for (i in 1:length(aVec) ) { 
	if ( aVec[i] > 5 ) { 
		aVec[i] <- 13 
		}
		}
print(aVec)

# we want to break when encountering something larger than 5 
aVec <- 1:10
theAddress <- 1 
for (i in 1:length(aVec) ) { 
	print(aVec[i])
	if ( aVec[i] > 5 ) { 
		break
		}
		}
print(aVec)



aDie<- 1:6 
numberofSixes <- 0 
for (i in 1:100 ){ 
	aRoll <- sample(aDie, size = 1, replace = TRUE)
	if ( aRoll == 6 ) { 
		numberofSixes <- numberofSixes + 1 
	}
}

print(numberofSixes)


#another way to do this previous function 

aDie<- 1:6 
numberofrolls <- 100
numberofSixes <- 0 
for (i in 1:numberofrolls ){ 
	aRoll <- sample(aDie, size = 1, replace = TRUE)
	if ( aRoll == 6 ) { 
		numberofSixes <- numberofSixes + 1 
	}
}

print(numberofSixes)


#save values of all die rolls instead of just 6 

aDie<- 1:6 
numberofrolls <- 100
dieRolls <- NA # need to initalize a vector 

for (i in 1:numberofrolls ){ 
	dieRolls <- sample(aDie, size = 1, replace = TRUE)
	DieRolls[i]<- aRoll 
	}

print(numberofSixes)


aDie < 1:6 
myRolls <- sample(aDie, size = 100, replace = TRUE)
sum(myRolls == 6)
# or 
nsixes <- 0 
for (i in myRolls) { 
	if (i == 6) { nsixes <- nsixes +1 
		}
}
print(nsixes)





aDie <- 1:6 
nSims <- 100 
nSixes <- rep(NA, time = nSims)

for ( i in 1:nSims ) { 
	myRolls <- sample(aDie, size=100, replace = TRUE )
	sum( myRolls == 6)
	}


aDie <- 1:6 
nSims <- 10000
nSixes <- rep(NA, time = nSims)

for ( i in 1:nSims ) { 
	myRolls <- sample(aDie, size=100, replace = TRUE )
	nSixes[i] <- sum( myRolls == 6)
	}

sum( nSixes < 10) / length(nSixes)



numberOfpetals = 0 
for (i in numberOfpetals) { 
	if ( i > 5) {
	numberOfpetals = numberOfpetals + 1 
	}
} 
print(numberOfpetals)






# Data frames 
# a collection of vectors of the same length 
# R also has a data class matrix - this is more restrictive (like a vector, it can only have one type)
# each column of a data frame can gave a different type 



setwd('~/Desktop/')
read.csv

ORDERS <- read.csv('orders.csv')



SepalLeng = 0 
for (i in iris$Sepal.Length) {
	if (3.5 > i > 2.5) { 
		SepalLeng = SepalLeng + 1 
		}
	}
	
#sepal.length is a vector 






##grab 10 iris 
iris[1:10, ]

# grab random 10 iris 
sample(1:nrow(iris), size = 10, replace = FALSE)
iris[sample(1:nrow(iris), size = 10, replace = FALSE), ]

## creating a new variable for 'petal area' (based on existing data)
iris$petal.Area <- pi * iris$Petal.Width/2 * iris$Petal.Length/2


## take out subset of your data 


iris$Species == 'virginica'

iris[iris$Species == 'virginica', "Petal.Length"]



## subset function 
subset ( iris, Species == 'Virginica')


subset ( iris, Species == 'Virginica')[,'Petal/Length']

















