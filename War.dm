var
	leafwar=0
	mistwar=0
	cloudwar=0
	grasswar=0
	rainwar=0
	rockwar=0
	soundwar=0
	waterwar=0
	sandwar=0
	snowwar=0
	SOwar=0
	AKATwar=0
	swordsmenwar=0
	warring=0
mob
	verb
		VillageW()
			set category = "Arena"
			set name = "War Toggle"
			if(!usr.war)
				usr.war=1
				usr<<"You have seleted to join all wars."
			else
				usr.war=0
				usr<<"You have seleted not to surport your Village in wars."

