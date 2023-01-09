
### -- RUN THESE LINES OF CODE TO CREATE MY FUNCTIONS ---

# -- creating a function to simulate a biased coin
#    (note: this is really just a wrapper for the sample() function)
mysteryCoin <- function(nFlips=1) {
	return(sample(c("Heads","Tails"),size=nFlips,replace=TRUE,prob=c(1,1.3)))
}

# -- creating a function to simulate a loaded die
#    (note: this is really just a wrapper for the sample() function)
mysteryDie <- function(nRolls=1) {
	return(sample(1:6,size=nRolls,replace=TRUE,prob=c(1,1,1,1,1,1.1)))
}


### -- INSTALL AND LOAD PACKAGES
install.packages("ggplot2")  # only need to run once
require("ggplot2")  # need to run everytime



### -- MYSTERY COIN
set.seed(123)  # set.seed so we get reproducable "randomness"
sampleFlips <- mysteryCoin(100)  # flip mystery coin 100 times

# How many times did I flip Tails?:
table( sampleFlips )  # 58 times with this seed

# Inferential statistics asks: How likely is it that an outcome this extreme
#  (or more extreme) would be produced by a fair coin?
#  (fair coin = null hypothesis)

# Simulation of "sampling distribution"
#  (flip a fair coin 100 times, lots of times!, each time count how many Tails)
nSims <- 1e5  # number of simulations (each time will flip coin 100 times)
aCoin <- c("Heads","Tails")  # create a coin
nTails <- rep(NA, times=nSims)  # initialize empty vector to hold results

#  for loop to perform simulation
for ( i in 1:nSims ) {
	flips <- sample( aCoin, size=100, replace=TRUE )
	nTails[i] <- sum( flips=="Tails" )
}

# How often do you see 58 or more Tails with a fair coin?
sum( nTails >= 58 ) / nSims  # 6.8% of the time
#  this is an empirical one-sided p-value

# How often do you see outcomes this extreme in either direction?
sum( nTails >= 58 | nTails <= 42 ) / nSims  # 13.4% of the time
#  this is an empirical two-sided p-value (the norm for what to report)

# All this means is that a fair coin, flipped 100 times, will yield
#  at least 58 of one type (Tails or Heads; 42 Tails==58 Heads) about
#  13% of the time...

# Histogram to visualize results
#  base R plot function
hist( nTails )  
#  fancier ggplot version (need to install and require()/library() ggplot2)
ggplot( data=as.data.frame(nTails), aes(x=nTails, fill=(nTails>=58|nTails<=42)))+
	geom_histogram( binwidth=1)+
	scale_fill_manual( "As or More Extreme", values=c("darkgrey","red") )+
	theme_bw()

# The most common statistical method to do this: Chi-square test
chisq.test( table( sampleFlips ) )  # p = .1096 ... pretty close




### -- MYSTERY DIE

set.seed(123)  # set.seed so we get reproducable "randomness"
sampleRolls <- mysteryDie(100)  # roll mystery die 100 times

# What did I roll?
table( sampleRolls )

# Let's use the average as our test measure:
mean( sampleRolls )  # 3.56 with this seed

# Simulate the sampling distribution (null hypothesis)
#  (roll fair die 100 times, lots of times!, each time take average)
nSims <- 1e5  # number of simulations (times rolling die 100 times)
nRolls <- 100  # number of rolls each simulation (same as what I did on mystery die)
aDie <- 1:6
mRolls <- rep(NA, times=nSims)
#  for loop to perform simulation
for ( i in 1:nSims ) {
	rolls <- sample( aDie, size=nRolls, replace=TRUE )
	mRolls[i] <- mean( rolls )
}

# How often do I see a mean of 3.56 or greater when I roll a fair die 100 times?
sum( mRolls >= 3.56 ) / nSims  # 37.4% of the time... one-sided p-value
# As extreme or more extreme in either direction?:
sum( mRolls >= 3.56 | mRolls <= 3.44 ) / nSims  # 74.6% of time... two-sided p-value

# Histogram
#  base R
hist( mRolls )
#  ggplot2
ggplot( data=as.data.frame(mRolls), 
		aes(x=mRolls, fill=(mRolls >= 3.56 | mRolls <= 3.44)))+
	geom_histogram( binwidth=.01)+
	scale_fill_manual( "As or More Extreme", values=c("darkgrey","red") )+
	theme_bw()
	
# The most common statistical method to do this: One-Sample t-Test
t.test( sampleRolls, mu=3.5 )  # p = .725
