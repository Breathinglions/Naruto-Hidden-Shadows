mob/var/jailtime = 0
mob
	proc
		jailtime()
			src.OOC = 0
			src.PK = 0
			src.SaveK()
			src.loc = locate(510,673,2)
			var/mins=0
			var/hours=0
			var/jailtimecheck=src.jailtime
			Start
			if(jailtimecheck >=35000)
				jailtimecheck-=35000
				hours+=10
				goto Start
			if(jailtimecheck >=3500)
				jailtimecheck-=3500
				hours+=1
				goto Start
			if(jailtimecheck >=600)
				jailtimecheck-=600
				mins+=10
				goto Start
			if(jailtimecheck >=60)
				jailtimecheck-=60
				mins+=1
				goto Start
			if(hours>0)src<<"<b>You are jailed. You will be free after [hours] hours [mins] minutes and [jailtimecheck] seconds."
			else if(mins>0)src<<"<b>You are jailed. You will be free after [mins] minutes and [jailtimecheck] seconds."
			else src<<"<b>You are jailed. You will be free after [jailtimecheck] seconds."
			loop
				if(jailtime>0)
					jailtime-=1
					spawn(10)goto loop
				else
					src.loc=locate(515,685,1)
					src <<"You have been Unjailed"
					src.OOC = 1
					src.SaveK()

