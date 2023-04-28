

Tyring to figure out how to make sense of this project. 

Okay so let's put it in the framework of decision making... Say I am trying to decide if I should take a job (1) or not (0). 

I'm going to t

Var 1 - (1=Benefits, 0=No benefits)
Var 2 - (1=Pay>=90k, 0=Pay<90k)

#1 
TARGET: 1 (Take the job )
	Var 1: 1
	Var 2: 1
	b = 1

#2
TARGET: 1 (Take the job )
	Var 1: 1
	Var 2: 1
	b = 1

#3
TARGET: 0 (Don't take the job)
	Var 1: 0
	Var 2: 0
	b = 1

#4
TARGET: 0 (Don't take the job)
	Var 1: 0
	Var 2: 0
	b = 1

#5
TARGET: 1 (Take the job )
	Var 1: 1
	Var 2: 1
	b = 1

#6
TARGET: 0 (Don't take the job)
	Var 1: 0
	Var 2: 0
	b = 1


#7
TARGET: 0 (Don't take the job)
	Var 1: 0
	Var 2: 0
	b = 1





We're going to use a logistic regression model because of the binary nature of the problem (yes, no aka 1,0)

To minimize the risk we know the risk function is

	(sum(ydesired*log(ypredict) - (1-ydesired)*log(1-ypredict))) / nrdatarecords 