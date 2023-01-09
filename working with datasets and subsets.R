# Working with subsets and datasets in R 
#Lexi Dingle 

# Question  1

aVec <- seq( from = 7, length.out = 100, by= 7)
sd(aVec)

#Question 2 
aVec <- 1:10
aVec [aVec == 2] # this is logical indexing 
 - returns a 2 
aVec == 2 
- returns FALSE TRUE FALSE FALSE FALSE... 

# Question 3 

aVec <- 1:10
aVec [c(FALSE , TRUE)]
- returns 2 4 6 8 10 


# Question 4 

temp <- die12rolls[1:10]
(temp > 2) & (temp < 9)
	# you can use temp to see whats going on in a big function 
sum( (die12rolls > 2) & (die12rolls < 9 ) )


# QUestion 8 
- generate vector 
set.seed(5431)
randVec <- rnorm(n= 10000, m= 2, sd=1)

- ... 
hist(randVec) # gets you histogram
mean(randVec)
sd(randVec)
sum(randVec < 0 )/ length (randVec)

# question 9 
sum((randVec <2.1)& (randVec > 1.9))

#Question 12 

sd(randVec * 12)


#################################################
# Homework 2 

aDF[ row, column ]


# question 2 
	#version 1
longpetals <- subset (iris, Petal.Length > 5)
nrow(longpetals)

	# version 2 

sum(iris$Petal.Length > 5)


	# Version 3
mycounter <- 0 
for (i in 1:nrow(iris)) {
	if (iris[i, 'Petal.Length'] > 5 ) { 
		mycounter <- mycounter + 1
	}
}

#Question 3 

someIris <- subset(iris, (Sepal.Width > 2.5) & (Sepal.Width <3.5))
mean(someIris$Sepal.Length)

# Question 4 

set.seed(9512)
aVec <- sample(1:1e6)
which(aVec == 63255)
or 
match(aVec == 63255)




# Question 5 

setwd('~/Desktop/')

Phil <- read.csv('phil.csv')
match(50.41,Phil$marTemp)

# Question 6


avgmar <- mean(Phil$marTemp)
avgfeb <- mean(Phil$febTemp)

avgmar - avgfeb

# Question 7 

Shadowseen <- subset(Phil, philShadow == 'Full Shadow'| philShadow == 'Partial Shadow')

mean(Shadowseen$febTemp) 

#Question 8 

myCounter <- 0 
for (i in 1:nrow(Phil) ) { 
	if (Phil[i, 'marTemp'] < Phil[i,'febTemp']) {
		myCounter <- myCounter + 1 
	}
}

#or...

nrow( subset( Phil$febTemp, ))


#######################
there is an in operator 
%in%  <- # you can test if in a vector of values


# pivot table in excel is similar to aggregate ()

aggregate(Petal.Length ~ Species, FUN = mean , data = iris) 

#put ~ for what you group by, this exampke is grouped by species 






Phil$anyShadow <- Phil$philshadow %in% c('Full Shadow', 'Partial Shadow')
aggreagate(febTemp ~anyshadow, FUN = mean, data = Phil)


#create column
Phil$anyShadow2 <- ifelse(Phil$PhilShadow %in% c('full Shadow', 'Partial Shadow'))

