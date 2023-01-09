# additional For loop work with datasets 
sepal1 = 0
for (i in iris$Sepal.Width) { 
	if ((i > 2.5) & (i < 3.5)) { 
		sepal1 <- sepal1 + iris$Sepal.Width[i]
		
	}
}
		
sepal1 

sepal1/ length.out(sepal1)


for (i in 1:10) { 
	print(i)
}

max(marTemp)

PHILL <- read.csv('phill.csv')
PHILL 

max(PHILL$marTemp)

avgmar <- mean(PHILL$marTemp)
avgfeb <- mean(PHILL$febTemp)

avgmar - avgfeb

if (PHILL$philShadow == TRUE) { 
	avgTemp <- avgTemp + PHILL$philShadow
	}

Shadowseen <- subset(Phil, philShadow == 'Full Shadow'| philShadow == 'Partial Shadow')

totalshadow <- 0 
for (i in Shadowseen) { 
	if (Phil$philShadow[i]== TRUE) { 
		totalshadow <- totalshadow + Phil$febTemp
	}
}

if (Shadownseen) { 
	total shadow <- totalshadow + Phil$febTemp 
}
	

	
febGreater <- 0 
for (i in 1:length(Phil$year)) {
	if (Phil$febTemp[i] > Phil$marTemp[i]) { 
		febGreater <- febGreater + 1
	}
}