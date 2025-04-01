obj
	Log
		icon = 'trainlog.dmi'
		density = 1
		verb
			Punch()
				set name = "Log Train"
				set category = "Training"
				set src in oview(1)
				if(usr.resting)
					usr<<"Cant train when your resting"
					return
				if(usr.meditating)
					usr<<"Cant train when your meditating"
					return
				if(usr.health<5)
					usr<<"Cant train too tired - Rest."
					return
				if(!usr.doing&&usr.health >= 1)
					if(usr.Mtai < usr.cap)
						usr.random = rand(1,3)
						if(usr.random == 1)
							usr.taiexp += rand(200,225)
							usr<<"You kick the log."
							usr.Tai()
						if(usr.random == 2)
							usr.taiexp += rand(200,225)
							usr<<"You punch the log."
							usr.Tai()
						else
							usr.exp += rand(200,220)
							usr.Levelup()
							usr.health -= 5
							usr.doing = 1
							if(usr)
								usr.doing = 0
							else
								return
					else
						usr<<"You reached you Tai cap."
				if(!usr.doing&&usr.health >= 5&&usr.Weights)
					if(usr.Mtai < usr.cap)
						usr.random = rand(1,3)
						if(usr.random == 1)
							usr.taiexp += rand(250,450)
							usr<<"You kick the log."
							usr.Tai()
						if(usr.random == 2)
							usr.taiexp += rand(250,450)
							usr<<"You punch the log."
							usr.Tai()
						else
							usr.exp += rand(250,450)
							usr.Levelup()
							usr.health -= 100
							usr.doing = 1
							if(usr)
								usr.doing = 0
							else
								return

					else
						usr<<"You reached your Tai cap."

obj
	Log2
		icon = 'trainlog.dmi'
		density = 1
		verb
			Punch()
				set name = "Log Train"
				set category = "Training"
				set src in oview(1)
				if (usr.resting)
					usr<<"Cant train when your resting"
					return
				if (usr.meditating)
					usr<<"Cant train when your meditating"
					return
				if(usr.health<5)
					usr<<"Cant train too tired - Rest."
					return
				if(!usr.doing&&usr.health >= 1)
					if(usr.Mtai < usr.cap)
						usr.random = rand(1,3)
						if(usr.random == 1)
							usr.taiexp += rand(1,7)
							usr<<"You kick the log."
							usr.Tai()
						if(usr.random == 2)
							usr.Mtai += rand(150,200)
							usr<<"You punch the log."
							usr.Tai()
						else
							usr.exp += rand(1,7)
							usr.Levelup()
							usr.health -= 5
							usr.doing = 1
							if(usr)
								usr.doing = 0
							else
								return
					else
						usr<<"You reached your Tai cap."

				if(!usr.doing&&usr.health >= 5&&usr.Weights)
					if(usr.Mtai < usr.cap)
						usr.random = rand(1,3)
						if(usr.random == 1)
							usr.taiexp += rand(300,520)
							usr<<"You kick the log."
							usr.Tai()
						if(usr.random == 2)
							usr.Mtai += rand(300,520)
							usr<<"You punch the log."
							usr.Tai()
						else
							usr.exp += rand(300,520)
							usr.Levelup()
							usr.health -= 100
							usr.doing = 1
							if(usr)
								usr.doing = 0
							else
								return

					else
						usr<<"You reached your Tai cap."