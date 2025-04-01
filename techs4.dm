obj/var
	tmp/walk = 0
	tmp/walkm = 7
	tmp/Owner
	tmp/haveowner = 0
	tmp/speeding
	tmp/Move_Delay = 0
mob
	var
		tmp/target=""
		tmp/Oover
		tmp/handseals=0
		sealtime=28


obj/Move()
	if(!src.move)
		return
	if(src.speeding <= 0)
		src.speeding = 1
		..()
		sleep(src.Move_Delay)
		src.speeding = 0

mob
	proc
		Handseals()
			if(src.Kaiten||src.sphere||src.ingat)
				return
			if(src.Froze)
				src<<"Your Frozen"
				return
			if(src.Frozen)
				src<<"Your Frozen"
				return
			if(src.captured)
				src<<"Your captured"
				return
			if(src.caught)
				src<<"Your captured"
				return
			if(src.resting)
				src<<"Not while resting"
				return
			if(src.meditating)
				src<<"Not while meditating"
				return
			if(src.firing)
				return
			if(src.handseals)
				return
			if(src.icon=='Human Icon Vamp.dmi'||src.icon=='Human Icon VampS.dmi'||src.icon=='Human Icon VampF.dmi')
				src.overlays+='sealsv.dmi'
			if(src.icon=='Human Icon White.dmi'||src.icon=='Human Icon WhiteS.dmi'||src.icon=='Human Icon WhiteF.dmi')
				src.overlays+='seals.dmi'
			if(src.icon=='Human Icon Tan.dmi'||src.icon=='Human Icon TanS.dmi'||src.icon=='Human Icon TanF.dmi')
				src.overlays+='seals.dmi'
			if(src.icon=='Human Icon Black.dmi'||src.icon=='Human Icon BlackS.dmi'||src.icon=='Human Icon BlackF.dmi')
				src.overlays+='sealsb.dmi'
			if(src.icon=='Human Icon Blue.dmi'||src.icon=='Human Icon BlueS.dmi'||src.icon=='Human Icon BlueF.dmi')
				src.overlays+='sealsbu.dmi'
			if(src.icon=='Human Icon Red.dmi'||src.icon=='Human Icon RedS.dmi'||src.icon=='Human Icon RedF.dmi')
				src.overlays+='sealsr.dmi'
			if(src.icon=='Human Icon Yellow.dmi'||src.icon=='Human Icon YellowS.dmi'||src.icon=='Human Icon YellowF.dmi')
				src.overlays+='sealsy.dmi'
			if(src.seals<=5&&src.seals>=0)
				src.random=rand(1,10)
				if(src.random==3)
					src.firing=1
					src<<"<b><font size=1>You begin to perform your neccessary hand seals"
					sleep(sealtime)
					src.firing=0
					src.handseals=1
					if(src.icon=='Human Icon Vamp.dmi'||src.icon=='Human Icon VampS.dmi'||src.icon=='Human Icon VampF.dmi')
						src.overlays-='sealsv.dmi'
					if(src.icon=='Human Icon White.dmi'||src.icon=='Human Icon WhiteS.dmi'||src.icon=='Human Icon WhiteF.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='Human Icon Tan.dmi'||src.icon=='Human Icon TanS.dmi'||src.icon=='Human Icon TanF.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='Human Icon Black.dmi'||src.icon=='Human Icon BlackS.dmi'||src.icon=='Human Icon BlackF.dmi')
						src.overlays-='sealsb.dmi'
					if(src.icon=='Human Icon Blue.dmi'||src.icon=='Human Icon BlueS.dmi'||src.icon=='Human Icon BlueF.dmi')
						src.overlays-='sealsbu.dmi'
					if(src.icon=='Human Icon Red.dmi'||src.icon=='Human Icon RedS.dmi'||src.icon=='Human Icon RedF.dmi')
						src.overlays-='sealsr.dmi'
					if(src.icon=='Human Icon Yellow.dmi'||src.icon=='Human Icon YellowS.dmi'||src.icon=='Human Icon YellowF.dmi')
						src.overlays-='sealsy.dmi'
					sleep(50)
					src.handseals=0
					src.firing=0
					src.Frozen=0
					src.random=rand(1,5)
					if(src.random==4)
						if(src.seals<=51)
							src<<"<font size=1>Your accuracy with seals increase."
							src.seals+=rand(1,2)
						else
							return
					if(src.random==2)
						if(src.sealtime>=11)
							src<<"<font size=1>Your speed with seals increase."
							src.sealtime-=1
				else
					if(src.icon=='Human Icon Vamp.dmi'||src.icon=='Human Icon VampS.dmi'||src.icon=='Human Icon VampF.dmi')
						src.overlays-='sealsv.dmi'
					if(src.icon=='Human Icon White.dmi'||src.icon=='Human Icon WhiteS.dmi'||src.icon=='Human Icon WhiteF.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='Human Icon Tan.dmi'||src.icon=='Human Icon TanS.dmi'||src.icon=='Human Icon TanF.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='Human Icon Black.dmi'||src.icon=='Human Icon BlackS.dmi'||src.icon=='Human Icon BlackF.dmi')
						src.overlays-='sealsb.dmi'
					if(src.icon=='Human Icon Blue.dmi'||src.icon=='Human Icon BlueS.dmi'||src.icon=='Human Icon BlueF.dmi')
						src.overlays-='sealsbu.dmi'
					if(src.icon=='Human Icon Red.dmi'||src.icon=='Human Icon RedS.dmi'||src.icon=='Human Icon RedF.dmi')
						src.overlays-='sealsr.dmi'
					if(src.icon=='Human Icon Yellow.dmi'||src.icon=='Human Icon YellowS.dmi'||src.icon=='Human Icon YellowF.dmi')
						src.overlays-='sealsy.dmi'
					src.firing=1
					src<<"<b><font size=1>Your hand slipped"
					sleep(10)
					src.firing=0
			if(src.seals<=30&&src.seals>=6)
				src.random=rand(1,4)
				if(src.random==4)
					src.firing=1
					src<<"<b><font size=1>You begin to perform your neccessary hand seals"
					sleep(sealtime)
					src.firing=0
					src.handseals=1
					if(src.icon=='Human Icon Vamp.dmi'||src.icon=='Human Icon VampS.dmi'||src.icon=='Human Icon VampF.dmi')
						src.overlays-='sealsv.dmi'
					if(src.icon=='Human Icon White.dmi'||src.icon=='Human Icon WhiteS.dmi'||src.icon=='Human Icon WhiteF.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='Human Icon Tan.dmi'||src.icon=='Human Icon TanS.dmi'||src.icon=='Human Icon TanF.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='Human Icon Black.dmi'||src.icon=='Human Icon BlackS.dmi'||src.icon=='Human Icon BlackF.dmi')
						src.overlays-='sealsb.dmi'
					if(src.icon=='Human Icon Blue.dmi'||src.icon=='Human Icon BlueS.dmi'||src.icon=='Human Icon BlueF.dmi')
						src.overlays-='sealsbu.dmi'
					if(src.icon=='Human Icon Red.dmi'||src.icon=='Human Icon RedS.dmi'||src.icon=='Human Icon RedF.dmi')
						src.overlays-='sealsr.dmi'
					if(src.icon=='Human Icon Yellow.dmi'||src.icon=='Human Icon YellowS.dmi'||src.icon=='Human Icon YellowF.dmi')
						src.overlays-='sealsy.dmi'
					sleep(50)
					src.firing=0
					src.handseals=0
					src.Frozen=0
					src.random=rand(1,5)
					if(src.random==4)
						if(src.seals<=51)
							src<<"<font size=1>Your accuracy with seals increase."
							src.seals+=rand(1,2)
						else
							return
					if(src.random==2)
						if(src.sealtime>=11)
							src<<"<font size=1>Your speed with seals increase."
							src.sealtime-=1
				else
					if(src.icon=='Human Icon Vamp.dmi'||src.icon=='Human Icon VampS.dmi'||src.icon=='Human Icon VampF.dmi')
						src.overlays-='sealsv.dmi'
					if(src.icon=='Human Icon White.dmi'||src.icon=='Human Icon WhiteS.dmi'||src.icon=='Human Icon WhiteF.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='Human Icon Tan.dmi'||src.icon=='Human Icon TanS.dmi'||src.icon=='Human Icon TanF.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='Human Icon Black.dmi'||src.icon=='Human Icon BlackS.dmi'||src.icon=='Human Icon BlackF.dmi')
						src.overlays-='sealsb.dmi'
					if(src.icon=='Human Icon Blue.dmi'||src.icon=='Human Icon BlueS.dmi'||src.icon=='Human Icon BlueF.dmi')
						src.overlays-='sealsbu.dmi'
					if(src.icon=='Human Icon Red.dmi'||src.icon=='Human Icon RedS.dmi'||src.icon=='Human Icon RedF.dmi')
						src.overlays-='sealsr.dmi'
					if(src.icon=='Human Icon Yellow.dmi'||src.icon=='Human Icon YellowS.dmi'||src.icon=='Human Icon YellowF.dmi')
						src.overlays-='sealsy.dmi'
					src.firing=1
					src<<"<b><font size=1>Your hand slipped"
					sleep(10)
					src.firing=0
			if(src.seals<=50&&src.seals>=31)
				src.random=rand(1,3)
				if(src.random==2)
					src.firing=1
					src<<"<b><font size=1>You begin to perform your neccessary hand seals"
					sleep(sealtime)
					src.firing=0
					src.handseals=1
					if(src.icon=='Human Icon Vamp.dmi'||src.icon=='Human Icon VampS.dmi'||src.icon=='Human Icon VampF.dmi')
						src.overlays-='sealsv.dmi'
					if(src.icon=='Human Icon White.dmi'||src.icon=='Human Icon WhiteS.dmi'||src.icon=='Human Icon WhiteF.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='Human Icon Tan.dmi'||src.icon=='Human Icon TanS.dmi'||src.icon=='Human Icon TanF.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='Human Icon Black.dmi'||src.icon=='Human Icon BlackS.dmi'||src.icon=='Human Icon BlackF.dmi')
						src.overlays-='sealsb.dmi'
					if(src.icon=='Human Icon Blue.dmi'||src.icon=='Human Icon BlueS.dmi'||src.icon=='Human Icon BlueF.dmi')
						src.overlays-='sealsbu.dmi'
					if(src.icon=='Human Icon Red.dmi'||src.icon=='Human Icon RedS.dmi'||src.icon=='Human Icon RedF.dmi')
						src.overlays-='sealsr.dmi'
					if(src.icon=='Human Icon Yellow.dmi'||src.icon=='Human Icon YellowS.dmi'||src.icon=='Human Icon YellowF.dmi')
						src.overlays-='sealsy.dmi'
					sleep(50)
					src.firing=0
					src.handseals=0
					src.Frozen=0
					src.random=rand(1,11)
					if(src.random==4)
						if(src.seals<=51)
							src<<"<font size=1>Your accuracy with seals increase."
							src.seals+=rand(1,2)
						else
							return
					if(src.random==2)
						if(src.sealtime>=11)
							src<<"<font size=1>Your speed with seals increase."
							src.sealtime-=1
				else
					if(src.icon=='Human Icon Vamp.dmi'||src.icon=='Human Icon VampS.dmi'||src.icon=='Human Icon VampF.dmi')
						src.overlays-='sealsv.dmi'
					if(src.icon=='Human Icon White.dmi'||src.icon=='Human Icon WhiteS.dmi'||src.icon=='Human Icon WhiteF.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='Human Icon Tan.dmi'||src.icon=='Human Icon TanS.dmi'||src.icon=='Human Icon TanF.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='Human Icon Black.dmi'||src.icon=='Human Icon BlackS.dmi'||src.icon=='Human Icon BlackF.dmi')
						src.overlays-='sealsb.dmi'
					if(src.icon=='Human Icon Blue.dmi'||src.icon=='Human Icon BlueS.dmi'||src.icon=='Human Icon BlueF.dmi')
						src.overlays-='sealsbu.dmi'
					if(src.icon=='Human Icon Red.dmi'||src.icon=='Human Icon RedS.dmi'||src.icon=='Human Icon RedF.dmi')
						src.overlays-='sealsr.dmi'
					if(src.icon=='Human Icon Yellow.dmi'||src.icon=='Human Icon YellowS.dmi'||src.icon=='Human Icon YellowF.dmi')
						src.overlays-='sealsy.dmi'
					src.firing=1
					src<<"<b><font size=1>Your hand slipped"
					sleep(10)
					src.firing=0
			if(src.seals<=100&&src.seals>=80)
				src.random=rand(1,2)
				if(src.random==1)
					src.firing=1
					src<<"<b><font size=1>You begin to perform your neccessary hand seals"
					sleep(sealtime)
					src.firing=0
					src.handseals=1
					if(src.icon=='Human Icon Vamp.dmi'||src.icon=='Human Icon VampS.dmi'||src.icon=='Human Icon VampF.dmi')
						src.overlays-='sealsv.dmi'
					if(src.icon=='Human Icon White.dmi'||src.icon=='Human Icon WhiteS.dmi'||src.icon=='Human Icon WhiteF.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='Human Icon Tan.dmi'||src.icon=='Human Icon TanS.dmi'||src.icon=='Human Icon TanF.dmi')
						src.overlays-='seals.dmi'
					if(src.icon=='Human Icon Black.dmi'||src.icon=='Human Icon BlackS.dmi'||src.icon=='Human Icon BlackF.dmi')
						src.overlays-='sealsb.dmi'
					if(src.icon=='Human Icon Blue.dmi'||src.icon=='Human Icon BlueS.dmi'||src.icon=='Human Icon BlueF.dmi')
						src.overlays-='sealsbu.dmi'
					if(src.icon=='Human Icon Red.dmi'||src.icon=='Human Icon RedS.dmi'||src.icon=='Human Icon RedF.dmi')
						src.overlays-='sealsr.dmi'
					if(src.icon=='Human Icon Yellow.dmi'||src.icon=='Human Icon YellowS.dmi'||src.icon=='Human Icon YellowF.dmi')
						src.overlays-='sealsy.dmi'
					sleep(50)
					src.firing=0
					src.handseals=0
					src.Frozen=0
					src.random=rand(1,11)
					if(src.random==4)
						if(src.seals<=51)
							src<<"<font size=1>Your accuracy with seals increase."
							src.seals+=rand(1,2)
						else
							return
					if(src.random==2)
						if(src.sealtime>=11)
							src<<"<font size=1>Your speed with seals increase."
							src.sealtime-=1

			if(src.seals>=51)
				src.firing=1
				src<<"<b><font size=1>You begin to perform your neccessary hand seals"
				sleep(sealtime)
				src.firing=0
				src.handseals=1
				if(src.icon=='Human Icon Vamp.dmi'||src.icon=='Human Icon VampS.dmi'||src.icon=='Human Icon VampF.dmi')
					src.overlays-='sealsv.dmi'
				if(src.icon=='Human Icon White.dmi'||src.icon=='Human Icon WhiteS.dmi'||src.icon=='Human Icon WhiteF.dmi')
					src.overlays-='seals.dmi'
				if(src.icon=='Human Icon Tan.dmi'||src.icon=='Human Icon TanS.dmi'||src.icon=='Human Icon TanF.dmi')
					src.overlays-='seals.dmi'
				if(src.icon=='Human Icon Black.dmi'||src.icon=='Human Icon BlackS.dmi'||src.icon=='Human Icon BlackF.dmi')
					src.overlays-='sealsb.dmi'
				if(src.icon=='Human Icon Blue.dmi'||src.icon=='Human Icon BlueS.dmi'||src.icon=='Human Icon BlueF.dmi')
					src.overlays-='sealsbu.dmi'
				if(src.icon=='Human Icon Red.dmi'||src.icon=='Human Icon RedS.dmi'||src.icon=='Human Icon RedF.dmi')
					src.overlays-='sealsr.dmi'
				if(src.icon=='Human Icon Yellow.dmi'||src.icon=='Human Icon YellowS.dmi'||src.icon=='Human Icon YellowF.dmi')
					src.overlays-='sealsy.dmi'
				sleep(50)
				src.firing=0
				src.handseals=0
				src.Frozen=0
				src.random=rand(1,10)
				if(src.random==2)
					if(src.sealtime>=11)
						src<<"<font size=1>Your speed with seals increase."
						src.sealtime-=1
			return

		Chakragain()
			src.random=rand(1,5)
			if(src.random==4)
				if(src.Mchakra<=src.Chakracap)
					src<<"Your base chakra rises!"
					src.Mchakra+=rand(25,50)

mob/sound
	verb
		Seneijashu() // Verb used for firing the beam
			set category = "NinJutsu"
			set name = "Sen'eijashu"
			usr.Handseals()
			if(usr.firing||usr.Kaiten||usr.counter)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(usr.inso)
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(usr.chakra <= 20)
				usr<<"You dont have enough chakra!"
				return
			if(!usr.handseals)
				return
			if(usr.Froze)
				usr<<"Your Frozen"
				return
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			else
				if(usr.Katon2N >= 40)
					if(usr.dir==NORTHWEST)
						usr<<"You can't face a diagnol and use this move"
						return
					if(usr.dir==SOUTHWEST)
						usr<<"You can't face a diagnol and use this move"
						return
					if(usr.dir==NORTHEAST)
						usr<<"You can't face a diagnol and use this move"
						return
					if(usr.dir==SOUTHEAST)
						usr<<"You can't face a diagnol and use this move"
						return
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
					usr.SnakeH += 1
					usr.chakra -= 100
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#ff4500> Sen'eijashu!</FONT>"
					var/obj/snakeG/D = new /obj/snakeG
					var/obj/snakeG/S = new /obj/snakeG
					var/obj/snakeG/K = new /obj/snakeG
					var/obj/snakeG/L = new /obj/snakeG
					usr.Chakragain()
					var/obj/snakeG/N = new /obj/snakeG
					if(K)
						K.loc = usr.loc
						K.nin=usr.nin
						K.name="[usr]"
						K.Move_Delay=1.4
						K.Gowner=usr
						walk(K,usr.dir)
					sleep(6)
					if(D)
						D.loc = usr.loc
						if(usr.dir==NORTH)
							D.x-=1
						if(usr.dir==SOUTH)
							D.x+=1
						if(usr.dir==WEST)
							D.y+=1
						if(usr.dir==EAST)
							D.y-=1
						D.nin=usr.nin
						D.name="[usr]"
						D.Move_Delay=1.4
						D.Gowner=usr
						walk(D,usr.dir)
					sleep(6)
					if(L)
						L.loc = usr.loc
						if(usr.dir==NORTH)
							L.x+=1
						if(usr.dir==SOUTH)
							L.x-=1
						if(usr.dir==WEST)
							L.y-=1
						if(usr.dir==EAST)
							L.y+=1
						L.Move_Delay=1.4
						L.nin=usr.nin
						L.name="[usr]"
						L.Gowner=usr
						walk(L,usr.dir)
					sleep(13)
					if(S)
						S.loc = usr.loc
						if(usr.dir==NORTH)
							S.x+=1
						if(usr.dir==SOUTH)
							S.x-=1
						if(usr.dir==WEST)
							S.y-=1
						if(usr.dir==EAST)
							S.y+=1
						S.Move_Delay=1.4
						S.nin=usr.nin
						S.name="[usr]"
						S.Gowner=usr
						walk(S,usr.dir)
					sleep(5)
					if(N)
						N.loc = usr.loc
						if(usr.dir==NORTH)
							N.x-=1
						if(usr.dir==SOUTH)
							N.x+=1
						if(usr.dir==WEST)
							N.y+=1
						if(usr.dir==EAST)
							N.y-=1
						N.Move_Delay=1.4
						N.nin=usr.nin
						N.name="[usr]"
						N.Gowner=usr
						walk(N,usr.dir)
					sleep(10)
					usr.firing = 0
					sleep(21)
					del(D)
					del(S)
					del(K)
					del(L)
					del(N)
					if(usr.Mnin <= usr.cap)
						usr.random = rand(1,6)
						if(random == 5||random==1)
							usr.Nin()
							usr.Skills()
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								usr.ChakraC+=ccgain
								if(usr.ChakraC>100)
									usr.ChakraC=100
								usr<<"[usr] you gained [ccgain] Chakra control..."
						else
							return
					else
						usr.random = rand(1,20)
						if(random == 5||random==1)
							usr.Nin()
							usr.Skills()
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								usr.ChakraC+=ccgain
								if(usr.ChakraC>100)
									usr.ChakraC=100
								usr<<"[usr] you gained [ccgain] Chakra control..."
						else
							return
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						if(usr.dir==NORTHWEST)
							usr<<"You can't face a diagnol and use this move"
							return
						if(usr.dir==SOUTHWEST)
							usr<<"You can't face a diagnol and use this move"
							return
						if(usr.dir==NORTHEAST)
							usr<<"You can't face a diagnol and use this move"
							return
						if(usr.dir==SOUTHEAST)
							usr<<"You can't face a diagnol and use this move"
							return
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam
						usr.chakra -= 20
						usr.SnakeH += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#ff4500> Sen'eijashu!</FONT>"
						var/obj/snakeG/D = new /obj/snakeG
						var/obj/snakeG/S = new /obj/snakeG
						var/obj/snakeG/K = new /obj/snakeG
						var/obj/snakeG/L = new /obj/snakeG
						usr.Chakragain()
						var/obj/snakeG/N = new /obj/snakeG
						if(K)
							K.loc = usr.loc
							K.nin=usr.nin
							K.name="[usr]"
							K.Move_Delay=1.4
							K.Gowner=usr
							walk(K,usr.dir)
						sleep(6)
						if(D)
							D.loc = usr.loc
							if(usr.dir==NORTH)
								D.x-=1
							if(usr.dir==SOUTH)
								D.x+=1
							if(usr.dir==WEST)
								D.y+=1
							if(usr.dir==EAST)
								D.y-=1
							D.nin=usr.nin
							D.name="[usr]"
							D.Move_Delay=1.4
							D.Gowner=usr
							walk(D,usr.dir)
						sleep(6)
						if(L)
							L.loc = usr.loc
							if(usr.dir==NORTH)
								L.x+=1
							if(usr.dir==SOUTH)
								L.x-=1
							if(usr.dir==WEST)
								L.y-=1
							if(usr.dir==EAST)
								L.y+=1
							L.Move_Delay=1.4
							L.nin=usr.nin
							L.name="[usr]"
							L.Gowner=usr
							walk(L,usr.dir)
						sleep(13)
						if(S)
							S.loc = usr.loc
							if(usr.dir==NORTH)
								S.x+=1
							if(usr.dir==SOUTH)
								S.x-=1
							if(usr.dir==WEST)
								S.y-=1
							if(usr.dir==EAST)
								S.y+=1
							S.Move_Delay=1.4
							S.nin=usr.nin
							S.name="[usr]"
							S.Gowner=usr
							walk(S,usr.dir)
						sleep(5)
						if(N)
							N.loc = usr.loc
							if(usr.dir==NORTH)
								N.x-=1
							if(usr.dir==SOUTH)
								N.x+=1
							if(usr.dir==WEST)
								N.y+=1
							if(usr.dir==EAST)
								N.y-=1
							N.Move_Delay=1.4
							N.nin=usr.nin
							N.name="[usr]"
							N.Gowner=usr
							walk(N,usr.dir)
						sleep(10)
						usr.firing = 0
						sleep(21)
						del(D)
						del(S)
						del(K)
						del(L)
						del(N)
						if(usr.Mnin <= usr.cap)
							usr.random = rand(1,5)
							if(random == 5||random==1)
								usr.Nin()
								usr.Skills()
								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									usr.ChakraC+=ccgain
									if(usr.ChakraC>100)
										usr.ChakraC=100
									usr<<"[usr] you gained [ccgain] Chakra control..."
							else
								return
						else
							usr.random = rand(1,5)
							if(random == 5||random==1)
								usr.Nin()
								usr.Skills()
								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									usr.ChakraC+=ccgain
									if(usr.ChakraC>100)
										usr.ChakraC=100
									usr<<"[usr] you gained [ccgain] Chakra control..."
							else
								return
					usr<<"You failed to use Sen'eijashu"

mob
	Curse_Seal3
		verb
			Shield()
				set category = "Curse Seal"
				set name = "Wing Shield"
				if(usr.CSWS == 4)
					usr<<"You may only use it twice per Curse Seal use!"
					return
				if(usr.Henge)
					usr<<"Not While Your In Henge"
					return
				if(usr.resting)
					usr<<"Not while resting"
					return
				if(usr.meditating)
					usr<<"Not while meditating"
					return
				if(!usr.Kaiten&&!usr.firing)
					usr.Frozen = 1
					usr.firing = 1
					usr.InCSWS = 1
					usr.CSWS += 1
					usr.CSWS_ONOFF = 1
					if(usr.icon=='Human Icon Tan.dmi'||usr.icon=='Human Icon TanF.dmi')
						usr.overlays += 'BaseT Wing Shield.dmi'
					if(usr.icon=='Human Icon White.dmi'||usr.icon=='Human Icon WhiteF.dmi')
						usr.overlays += 'Base white Wing Shield.dmi'
					if(usr.icon=='Human Icon Black.dmi'||usr.icon=='Human Icon BlackF.dmi')
						usr.overlays += 'BaseBlack Wing Shield.dmi'
					if(usr.icon=='Human Icon Blue.dmi'||usr.icon=='Human Icon BlueF.dmi')
						usr.overlays += 'BaseBlue Wing Shield.dmi'
					if(usr.icon=='Human Icon Red.dmi'||usr.icon=='Human Icon RedF.dmi')
						usr.overlays += 'BaseRed Wing Shield.dmi'
					if(usr.icon=='Human Icon Vamp.dmi'||usr.icon=='Human Icon VampF.dmi')
						usr.overlays += 'BaseVamp Wing Shield.dmi'
					if(usr.icon=='Human Icon Yellow.dmi'||usr.icon=='Human Icon YellowF.dmi')
						usr.overlays += 'BaseYellow Wing Shield.dmi'
					src.overlays-=/obj/CurseSeal3_TC
					src.overlays-=/obj/CurseSeal3_TT
					src.overlays-=/obj/CurseSeal3_TBL
					src.overlays-=/obj/CurseSeal3_TBR
					src.overlays-=/obj/CurseSeal3_TTL
					src.overlays-=/obj/CurseSeal3_TTR
					src.overlays-=/obj/CurseSeal3_WC
					src.overlays-=/obj/CurseSeal3_WT
					src.overlays-=/obj/CurseSeal3_WBL
					src.overlays-=/obj/CurseSeal3_WBR
					src.overlays-=/obj/CurseSeal3_WTL
					src.overlays-=/obj/CurseSeal3_WTR
					src.overlays-=/obj/CurseSeal3_BC
					src.overlays-=/obj/CurseSeal3_BT
					src.overlays-=/obj/CurseSeal3_BBL
					src.overlays-=/obj/CurseSeal3_BBR
					src.overlays-=/obj/CurseSeal3_BTL
					src.overlays-=/obj/CurseSeal3_BTR
					src.overlays-=/obj/CurseSeal3_BlC
					src.overlays-=/obj/CurseSeal3_BlT
					src.overlays-=/obj/CurseSeal3_BlBL
					src.overlays-=/obj/CurseSeal3_BlBR
					src.overlays-=/obj/CurseSeal3_BlTL
					src.overlays-=/obj/CurseSeal3_BlTR
					src.overlays-=/obj/CurseSeal3_RC
					src.overlays-=/obj/CurseSeal3_RT
					src.overlays-=/obj/CurseSeal3_RBL
					src.overlays-=/obj/CurseSeal3_RBR
					src.overlays-=/obj/CurseSeal3_RTL
					src.overlays-=/obj/CurseSeal3_RTR
					src.overlays-=/obj/CurseSeal3_VC
					src.overlays-=/obj/CurseSeal3_VT
					src.overlays-=/obj/CurseSeal3_VBL
					src.overlays-=/obj/CurseSeal3_VBR
					src.overlays-=/obj/CurseSeal3_VTL
					src.overlays-=/obj/CurseSeal3_VTR
					src.overlays-=/obj/CurseSeal3_YC
					src.overlays-=/obj/CurseSeal3_YT
					src.overlays-=/obj/CurseSeal3_YBL
					src.overlays-=/obj/CurseSeal3_YBR
					src.overlays-=/obj/CurseSeal3_YTL
					src.overlays-=/obj/CurseSeal3_YTR
					usr.Kaiten =1
					sleep(50)
					if(usr.CSWS_ONOFF == 1)
						usr.Frozen = 0
						usr.firing = 0
						usr.InCSWS = 0
						if(usr.icon=='Human Icon Tan.dmi'||usr.icon=='Human Icon TanF.dmi')
							usr.overlays -= 'BaseT Wing Shield.dmi'
							src.overlays+=/obj/CurseSeal3_TC
							src.overlays+=/obj/CurseSeal3_TT
							src.overlays+=/obj/CurseSeal3_TBL
							src.overlays+=/obj/CurseSeal3_TBR
							src.overlays+=/obj/CurseSeal3_TTL
							src.overlays+=/obj/CurseSeal3_TTR
						if(usr.icon=='Human Icon White.dmi'||usr.icon=='Human Icon WhiteF.dmi')
							usr.overlays -= 'Base white Wing Shield.dmi'
							src.overlays+=/obj/CurseSeal3_WC
							src.overlays+=/obj/CurseSeal3_WT
							src.overlays+=/obj/CurseSeal3_WBL
							src.overlays+=/obj/CurseSeal3_WBR
							src.overlays+=/obj/CurseSeal3_WTL
							src.overlays+=/obj/CurseSeal3_WTR
						if(usr.icon=='Human Icon Black.dmi'||usr.icon=='Human Icon BlackF.dmi')
							usr.overlays -= 'BaseBlack Wing Shield.dmi'
							src.overlays+=/obj/CurseSeal3_BC
							src.overlays+=/obj/CurseSeal3_BT
							src.overlays+=/obj/CurseSeal3_BBL
							src.overlays+=/obj/CurseSeal3_BBR
							src.overlays+=/obj/CurseSeal3_BTL
							src.overlays+=/obj/CurseSeal3_BTR
						if(usr.icon=='Human Icon Blue.dmi'||usr.icon=='Human Icon BlueF.dmi')
							usr.overlays -= 'BaseBlue Wing Shield.dmi'
							src.overlays+=/obj/CurseSeal3_BlC
							src.overlays+=/obj/CurseSeal3_BlT
							src.overlays+=/obj/CurseSeal3_BlBL
							src.overlays+=/obj/CurseSeal3_BlBR
							src.overlays+=/obj/CurseSeal3_BlTL
							src.overlays+=/obj/CurseSeal3_BlTR
						if(usr.icon=='Human Icon Red.dmi'||usr.icon=='Human Icon RedF.dmi')
							usr.overlays -= 'BaseRed Wing Shield.dmi'
							src.overlays+=/obj/CurseSeal3_RC
							src.overlays+=/obj/CurseSeal3_RT
							src.overlays+=/obj/CurseSeal3_RBL
							src.overlays+=/obj/CurseSeal3_RBR
							src.overlays+=/obj/CurseSeal3_RTL
							src.overlays+=/obj/CurseSeal3_RTR
						if(usr.icon=='Human Icon Vamp.dmi'||usr.icon=='Human Icon VampF.dmi')
							usr.overlays -= 'BaseVamp Wing Shield.dmi'
							src.overlays+=/obj/CurseSeal3_VC
							src.overlays+=/obj/CurseSeal3_VT
							src.overlays+=/obj/CurseSeal3_VBL
							src.overlays+=/obj/CurseSeal3_VBR
							src.overlays+=/obj/CurseSeal3_VTL
							src.overlays+=/obj/CurseSeal3_VTR
						if(usr.icon=='Human Icon Yellow.dmi'||usr.icon=='Human Icon YellowF.dmi')
							usr.overlays -= 'BaseYellow Wing Shield.dmi'
							src.overlays+=/obj/CurseSeal3_YC
							src.overlays+=/obj/CurseSeal3_YT
							src.overlays+=/obj/CurseSeal3_YBL
							src.overlays+=/obj/CurseSeal3_YBR
							src.overlays+=/obj/CurseSeal3_YTL
							src.overlays+=/obj/CurseSeal3_YTR
						if(usr.InCS3==0)
							src.overlays-=/obj/CurseSeal3_TC
							src.overlays-=/obj/CurseSeal3_TT
							src.overlays-=/obj/CurseSeal3_TBL
							src.overlays-=/obj/CurseSeal3_TBR
							src.overlays-=/obj/CurseSeal3_TTL
							src.overlays-=/obj/CurseSeal3_TTR
							src.overlays-=/obj/CurseSeal3_WC
							src.overlays-=/obj/CurseSeal3_WT
							src.overlays-=/obj/CurseSeal3_WBL
							src.overlays-=/obj/CurseSeal3_WBR
							src.overlays-=/obj/CurseSeal3_WTL
							src.overlays-=/obj/CurseSeal3_WTR
							src.overlays-=/obj/CurseSeal3_BC
							src.overlays-=/obj/CurseSeal3_BT
							src.overlays-=/obj/CurseSeal3_BBL
							src.overlays-=/obj/CurseSeal3_BBR
							src.overlays-=/obj/CurseSeal3_BTL
							src.overlays-=/obj/CurseSeal3_BTR
							src.overlays-=/obj/CurseSeal3_BlC
							src.overlays-=/obj/CurseSeal3_BlT
							src.overlays-=/obj/CurseSeal3_BlBL
							src.overlays-=/obj/CurseSeal3_BlBR
							src.overlays-=/obj/CurseSeal3_BlTL
							src.overlays-=/obj/CurseSeal3_BlTR
							src.overlays-=/obj/CurseSeal3_RC
							src.overlays-=/obj/CurseSeal3_RT
							src.overlays-=/obj/CurseSeal3_RBL
							src.overlays-=/obj/CurseSeal3_RBR
							src.overlays-=/obj/CurseSeal3_RTL
							src.overlays-=/obj/CurseSeal3_RTR
							src.overlays-=/obj/CurseSeal3_VC
							src.overlays-=/obj/CurseSeal3_VT
							src.overlays-=/obj/CurseSeal3_VBL
							src.overlays-=/obj/CurseSeal3_VBR
							src.overlays-=/obj/CurseSeal3_VTL
							src.overlays-=/obj/CurseSeal3_VTR
							src.overlays-=/obj/CurseSeal3_YC
							src.overlays-=/obj/CurseSeal3_YT
							src.overlays-=/obj/CurseSeal3_YBL
							src.overlays-=/obj/CurseSeal3_YBR
							src.overlays-=/obj/CurseSeal3_YTL
							src.overlays-=/obj/CurseSeal3_YTR
							usr.CSWS = 0
						usr.CSWS += 1
						usr.Kaiten =0
						usr<<"You unwrap your wings and stop shielding yourself."
					else
						return
				else if(usr.Kaiten)
					usr.Frozen = 0
					usr.firing = 0
					usr.InCSWS = 0
					usr.CSWS_ONOFF = 0
					usr.CSWS += 1
					if(usr.icon=='Human Icon Tan.dmi'||usr.icon=='Human Icon TanF.dmi')
						usr.overlays -= 'BaseT Wing Shield.dmi'
					if(usr.icon=='Human Icon White.dmi'||usr.icon=='Human Icon WhiteF.dmi')
						usr.overlays -= 'Base white Wing Shield.dmi'
					if(usr.icon=='Human Icon Black.dmi'||usr.icon=='Human Icon BlackF.dmi')
						usr.overlays -= 'BaseBlack Wing Shield.dmi'
					if(usr.icon=='Human Icon Blue.dmi'||usr.icon=='Human Icon BlueF.dmi')
						usr.overlays -= 'BaseBlue Wing Shield.dmi'
					if(usr.icon=='Human Icon Red.dmi'||usr.icon=='Human Icon RedF.dmi')
						usr.overlays -= 'BaseRed Wing Shield.dmi'
					if(usr.icon=='Human Icon Vamp.dmi'||usr.icon=='Human Icon VampF.dmi')
						usr.overlays -= 'BaseVamp Wing Shield.dmi'
					if(usr.icon=='Human Icon Yellow.dmi'||usr.icon=='Human Icon YellowF.dmi')
						usr.overlays -= 'BaseYellow Wing Shield.dmi'
					if(usr.InCS3==1)
						if(usr.icon=='Human Icon Tan.dmi'||usr.icon=='Human Icon TanF.dmi')
							src.overlays+=/obj/CurseSeal3_TC
							src.overlays+=/obj/CurseSeal3_TT
							src.overlays+=/obj/CurseSeal3_TBL
							src.overlays+=/obj/CurseSeal3_TBR
							src.overlays+=/obj/CurseSeal3_TTL
							src.overlays+=/obj/CurseSeal3_TTR
						if(usr.icon=='Human Icon White.dmi'||usr.icon=='Human Icon WhiteF.dmi')
							src.overlays+=/obj/CurseSeal3_WC
							src.overlays+=/obj/CurseSeal3_WT
							src.overlays+=/obj/CurseSeal3_WBL
							src.overlays+=/obj/CurseSeal3_WBR
							src.overlays+=/obj/CurseSeal3_WTL
							src.overlays+=/obj/CurseSeal3_WTR
						if(usr.icon=='Human Icon Black.dmi'||usr.icon=='Human Icon BlackF.dmi')
							src.overlays+=/obj/CurseSeal3_BC
							src.overlays+=/obj/CurseSeal3_BT
							src.overlays+=/obj/CurseSeal3_BBL
							src.overlays+=/obj/CurseSeal3_BBR
							src.overlays+=/obj/CurseSeal3_BTL
							src.overlays+=/obj/CurseSeal3_BTR
						if(usr.icon=='Human Icon Blue.dmi'||usr.icon=='Human Icon BlueF.dmi')
							src.overlays+=/obj/CurseSeal3_BlC
							src.overlays+=/obj/CurseSeal3_BlT
							src.overlays+=/obj/CurseSeal3_BlBL
							src.overlays+=/obj/CurseSeal3_BlBR
							src.overlays+=/obj/CurseSeal3_BlTL
							src.overlays+=/obj/CurseSeal3_BlTR
						if(usr.icon=='Human Icon Red.dmi'||usr.icon=='Human Icon RedF.dmi')
							src.overlays+=/obj/CurseSeal3_RC
							src.overlays+=/obj/CurseSeal3_RT
							src.overlays+=/obj/CurseSeal3_RBL
							src.overlays+=/obj/CurseSeal3_RBR
							src.overlays+=/obj/CurseSeal3_RTL
							src.overlays+=/obj/CurseSeal3_RTR
						if(usr.icon=='Human Icon Vamp.dmi'||usr.icon=='Human Icon VampF.dmi')
							src.overlays+=/obj/CurseSeal3_VC
							src.overlays+=/obj/CurseSeal3_VT
							src.overlays+=/obj/CurseSeal3_VBL
							src.overlays+=/obj/CurseSeal3_VBR
							src.overlays+=/obj/CurseSeal3_VTL
							src.overlays+=/obj/CurseSeal3_VTR
						if(usr.icon=='Human Icon Yellow.dmi'||usr.icon=='Human Icon YellowF.dmi')
							src.overlays+=/obj/CurseSeal3_YC
							src.overlays+=/obj/CurseSeal3_YT
							src.overlays+=/obj/CurseSeal3_YBL
							src.overlays+=/obj/CurseSeal3_YBR
							src.overlays+=/obj/CurseSeal3_YTL
							src.overlays+=/obj/CurseSeal3_YTR
					usr.Kaiten =0
					usr<<"You unwrap your wings and stop shielding yourself."
obj/
	bijuu
		icon = 'BijuuBomb.dmi'
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(!M.PK)
					usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [M]"
					return
				if(M.counter)
					del(src)
					return
				var/damage = round(src.nin*10)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit for [damage] damage by a Jinchuuriki's Bijuu Bomb!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob
	Bijuu
		verb
			BijuuB()
				set category = "Bijuu"
				set name = "Bijuu Bomb"
				usr.Handseals()
				if(!usr.handseals||usr.firing||usr.sphere||usr.Kaiten||src.Kaiten)return
				if(usr.Frozen)
					usr<<"Your Frozen"
					return
				if(usr.caught)
					usr<<"Your captured"
					return
				if(usr.captured)
					usr<<"Your captured"
					return
				if(!usr.PK)
					usr<<"NON PK ZONE!"
					return
				if(usr.Froze)
					usr<<"Your Frozen"
					return
				if(usr.resting)
					usr<<"Not while resting"
					return
				if(usr.meditating)
					usr<<"Not while meditating"
					return
				if(!src.PK)
					usr<<"NON PK ZONE!"
					return
				if(src.captured)
					usr<<"He is already caught!"
					return
				if(usr.chakra<=120000)
					usr<<"Not enough chakra!!"
					return
				else // If the firing var isn't 1...
					usr.chakra -= 125000
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					view()<<"<font size=1><font face=Tahoma><b><font color=white>[usr]<font color=red> Says: BIJUU BOMB!</font>"
					var/obj/bijuu/S1 = new /obj/bijuu/
					S1.loc = usr.loc
					S1.nin = usr.nin
					S1.dir = usr.dir
					S1.name = "[usr]"
					S1.Gowner = usr
					walk(S1,usr.dir)
					sleep(25)
					usr.firing = 0
					sleep(45)
					del(S1)

mob
	Kyuubi3
		verb
			Shield()
				set category = "Kyuubi"
				set name = "Kyuubi Aura Shield"
				if(usr.KASS >= 4)
					usr<<"You may only use it twice per Kyuubi use!"
					return
				if(usr.Henge)
					usr<<"Not While Your In Henge"
					return
				if(usr.resting)
					usr<<"Not while resting"
					return
				if(usr.meditating)
					usr<<"Not while meditating"
					return
				if(!usr.Kaiten&&!usr.firing)
					usr.Frozen = 1
					usr.firing = 1
					usr.InKASS = 1
					usr.KASS += 1
					usr.KAS_ONOFF = 1
					usr.overlays+='Kyuubi Aura Shield.dmi'
					usr.overlays-=/obj/CKyuubi4Tails
					usr.overlays-=/obj/TKyuubi4Tails
					usr.overlays-=/obj/BLKyuubi4Tails
					usr.overlays-=/obj/BRKyuubi4Tails
					usr.overlays-=/obj/TLKyuubi4Tails
					usr.overlays-=/obj/TRKyuubi4Tails
					usr.Kaiten =1
					sleep(50)
					if(usr.KAS_ONOFF == 1)
						usr.Frozen = 0
						usr.firing = 0
						usr.InKASS = 0
						usr.overlays-='Kyuubi Aura Shield.dmi'
						src.overlays+=/obj/CKyuubi4Tails
						src.overlays+=/obj/TKyuubi4Tails
						src.overlays+=/obj/BLKyuubi4Tails
						src.overlays+=/obj/BRKyuubi4Tails
						src.overlays+=/obj/TLKyuubi4Tails
						src.overlays+=/obj/TRKyuubi4Tails
						if(usr.InK3==0)
							usr.overlays-=/obj/CKyuubi4Tails
							usr.overlays-=/obj/TKyuubi4Tails
							usr.overlays-=/obj/BLKyuubi4Tails
							usr.overlays-=/obj/BRKyuubi4Tails
							usr.overlays-=/obj/TLKyuubi4Tails
							usr.overlays-=/obj/TRKyuubi4Tails
							usr.KASS = 0
						usr.Kaiten =0
						usr<<"Your Kyuubi Aura Shield wears off."
						usr.KASS += 1
					else
						return
				else if(usr.Kaiten)
					usr.Frozen = 0
					usr.firing = 0
					usr.InKASS = 0
					usr.KAS_ONOFF = 0
					usr.KASS += 1
					src.overlays-='Kyuubi Aura Shield.dmi'
					if(usr.InK3==1)
						src.overlays+=/obj/CKyuubi4Tails
						src.overlays+=/obj/TKyuubi4Tails
						src.overlays+=/obj/BLKyuubi4Tails
						src.overlays+=/obj/BRKyuubi4Tails
						src.overlays+=/obj/TLKyuubi4Tails
						src.overlays+=/obj/TRKyuubi4Tails
					usr.Kaiten =0
					usr<<"You stop using your Kyuubi Aura to shield yourself."


mob/proc/placeclay()
	if(!src.havekonchuu)
		return
	else
		src.chakra -= 1000
		if(src.chakra<=0)
			src.chakra = 0
		sleep(10)
		src.placeclay()


