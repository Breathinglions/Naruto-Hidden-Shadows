obj/var
	num = 0       // This var is used later to help set the icon state
	width = 15   // this is basically the number of icon states you have
	rangemax      // the range of the var that each tile of the meter will deal with
	rangemin
	num2 = 0       // This var is used later to help set the icon state
	width2 = 100   // this is basically the number of icon states you have
	rangemax2      // the range of the var that each tile of the meter will deal with
	rangemin2

	worn = 0
	have = 0
	owner
	delay = 0
	ammount=1
	clicked = 0
	oname=""
	equipment
	equipped=0

	checkedyet

	tmp/mist=0
	tmp/senban=0
	tmp/Gowner=""
	tmp/moved=0
	tmp/nin=0
	tmp/jukai=0
	tmp/target=""
	tmp/move=1
	tmp/sawarabi=0
	tmp/price
	tmp/Mountain
	tmp/tagset=0
	tmp/counter=0
	tmp/Preta=0
	tmp/karamatsu=0
	tmp/Arera=0
	tmp/Ice1=0
	tmp/DotonDD=0

obj
	karamatsu
		icon='Karamatsu.dmi'
		layer=MOB_LAYER+2

obj
	hair
		//layer = FLOAT_LAYER - 2
		layer = OBJ_LAYER

obj
	Blood
		name = "Blood"
		icon = 'Blood.dmi'
		icon_state = "1"
	Blood2
		name = "Blood Puddle"
		icon = 'Blood.dmi'
		icon_state = "2"
	Blood3
		name = "Blood Lake"
		icon = 'Blood.dmi'
		icon_state = "3"
obj
	ClaySpider
		name = "Clay Spider"
		icon = 'Clay Spider.dmi'

obj
	Weights
		name = "Weights"
		icon = 'Weights.dmi'
		equipment = "weights"
		worn = 0
		price = 7000
		proc
			Wear()
				if(usr)
					if(usr.Henge)return
					var/equ=equipped
					for(var/obj/O in usr.contents)if(O.equipment=="weights")
						O.equipped=0
						O.suffix=""
					if(equ)
						usr.Weights = 0
						usr<<"You remove the [src.name]."
						usr.Move_Delay = usr.Savedspeed
						usr.overlays -= 'Weights.dmi'
					else
						usr.Weights = 1
						equipped=1
						suffix="Equipped"
						usr<<"You wear the [src.name]."
						usr.Savedspeed = usr.Move_Delay
						usr.overlays += 'Weights.dmi'
		Click()for(var/obj/O in usr.contents)if(O.equipment=="weights")Wear()
		verb
			Drop()
				if(equipped)usr<<"Not while its being worn."
				else loc=locate(usr.x,usr.y,usr.z),usr.SaveK()
			Get()
				set src in oview(1)
				loc=usr
				usr<<"You picked up [src]"

/*
obj
	Weights
		name = "Weights"
		icon = 'Weights.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 5000
		verb
			Wear()

				if(src.worn)
					src.worn = 0
					usr.overlays -= 'Weights.dmi'//temp icon
					usr.Move_Delay = usr.Savedspeed
					usr.Weights = 0
					usr << "You remove the [src.name]."
					if(usr.Mountain&&usr.Frozen)
						usr<<"You can now climb the mountain..."
						usr.Frozen=0
					if(usr.onwater&&usr.Frozen)
						usr<<"You can now walk on water..."
						usr.Frozen=0
				else
					src.worn = 1
					usr.Savedspeed = usr.Move_Delay
					usr.overlays += 'Weights.dmi'
					usr << "You wear the [src.name]."
					usr.Weights = 1
			Drop()
				if(src.worn)
					usr << "Not while its being worn."
				if(!src.worn)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()

				set src in oview(1)
				src.loc = usr
				usr<<"You picked up [src]"*/


obj
	Utakata
		name = "Utakata's Suit"
		icon = 'Utakata.dmi'//dont have a base icon so cant make weights icon!lol
		price = 1000
		worn = 0
		verb
			Wear()

				if(!src.worn)
					src.worn=1
					usr.overlays += 'Utakata.dmi'
					usr.verbs += new /mob/fire/verb/FlameRing()
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
				else
					src:worn = 0
					usr.overlays -= 'Utakata.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.overlays -= 'Utakata.dmi'
			Drop()

				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()

				set src in oview(1)
				src.loc = usr
				usr<<"You picked up some [src]"
obj
	HanS
		name = "Hans Suit"
		icon = 'HanS.dmi'//dont have a base icon so cant make weights icon!lol
		price = 1000
		worn = 0
		verb
			Wear()

				if(!src.worn)
					src.worn=1
					usr.overlays += 'HanS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
				else
					src:worn = 0
					usr.overlays -= 'HanS.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.overlays -= 'HanS.dmi'
			Drop()

				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()

				set src in oview(1)
				src.loc = usr
				usr<<"You picked up some [src]"
obj
	FuS
		name = "Fu Suit"
		icon = 'FuS.dmi'//dont have a base icon so cant make weights icon!lol
		price = 1000
		worn = 0
		verb
			Wear()

				if(!src.worn)
					src.worn=1
					usr.overlays += 'FuS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
				else
					src:worn = 0
					usr.overlays -= 'FuS.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.overlays -= 'FuS.dmi'
			Drop()

				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()

				set src in oview(1)
				src.loc = usr
				usr<<"You picked up some [src]"

obj
	Shoes
		name = "Shoes"
		icon = 'Cloths.dmi'//dont have a base icon so cant make weights icon!lol
		price = 1000
		worn = 0
		verb
			Wear()

				if(!src.worn)
					src.worn=1
					usr.overlays += 'Cloths.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
				else
					src:worn = 0
					usr.overlays -= 'Cloths.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.overlays -= 'Cloths.dmi'
			Drop()

				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()

				set src in oview(1)
				src.loc = usr
				usr<<"You picked up some [src]"
obj
	Shirt
		name = "Shirt"
		icon = 'shirt.dmi'//dont have a base icon so cant make weights icon!lol
		price = 7500
		worn = 0
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'shirt.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.overlays-= usr.shirtI
				else
					src:worn = 1
					var/shirtred = input("How much red do you want?") as num
					var/shirtblue = input("How much blue do you want?") as num
					var/shirtgreen = input("How much green do you want?") as num
					usr.shirtI = 'shirt.dmi'
					usr.shirtI += rgb(shirtred,shirtgreen,shirtblue)
					usr.rshirt = shirtred
					usr.gshirt = shirtgreen
					usr.bshirt = shirtblue
					usr.overlays += usr.shirtI
					usr.SI = usr.shirtI
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Drop()

				if(src:worn)
					usr << "Not while its being worn."
				if(!src:worn)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up some [src]"

obj
	FaceMask
		name = "Face Mask"
		icon = 'Fmask.dmi'//dont have a base icon so cant make weights icon!lol
		price = 1000
		worn = 0
		verb
			Wear()
				if(src.worn)
					src.worn = 0
					usr.overlays -= 'Fmask.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else if(!src.worn)
					src.worn = 1
					var/facemred = input("How much red do you want?") as num
					var/facemblue = input("How much blue do you want?") as num
					var/facemgreen = input("How much green do you want?") as num
					usr.facemI = 'Fmask.dmi'
					usr.facemI += rgb(facemred,facemgreen,facemblue)
					usr.rfacem = facemred
					usr.gfacem = facemgreen
					usr.bfacem = facemblue
					usr.overlays += usr.facemI
					usr.FI = usr.facemI
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Drop()

				if(src.worn)
					usr << "Not while its being worn."
				if(!src:worn)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	SasukeShirt
		name = "Sasuke Shirt"
		icon = 'SasukeShirt.dmi'//dont have a base icon so cant make weights icon!lol
		price = 2500
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SasukeShirt.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SasukeShirt.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a shirt."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	Pants
		name = "Pants"
		icon = 'pants.dmi'//dont have a base icon so cant make weights icon!lol
		price = 2500
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'pants.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.overlays -= usr.Picon
				else
					src:worn = 1
					var/pantsred = input("How much red do you want?") as num
					var/pantsblue = input("How much blue do you want?") as num
					var/pantsgreen = input("How much green do you want?") as num
					var/pantsI = 'pants.dmi'
					pantsI += rgb(pantsred,pantsgreen,pantsblue)
					usr.rpants = pantsred
					usr.gpants = pantsgreen
					usr.bpants = pantsblue
					usr.overlays += pantsI
					usr.Picon = pantsI
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a shirt."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up some [src]"

obj
	Shades
		name = "Shades"
		icon = 'shades.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 1580
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'shades.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'shades.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"Eye Appeal for you too look cool on your missions!"
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	BackShuriken
		name = "BackShurikan"
		icon = 'Big Back Shuriken.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 1580
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Big Back Shuriken.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Big Back Shuriken.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Big Shuriken worn on the Back."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	KagebunshinS
		name = "Kage bunshin scroll"
		icon = 'scroll.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state = "1"
		worn = 0
		price = 1580
		verb
			Learn()
				if(usr.learntK == 0)
					if(usr.rank == "Student")
						usr<<"Your Rank Has To Be Higher Than A Student"
						return
					if(usr.BunshinN<100)
						usr<<"Sorry you can´t learn it yet you need to use Bunshin No Jutsu 100 times first..."
						return
					if(usr.BunshinN>=100)
						usr << "<I><B><font face = courier><font color = blue>You learned Kage Bunshin No Jutsu!";usr.verbs += new /obj/bunshins/KageBunshinnojutsu/verb/KageBunshinNoJutsu()
						usr:learntK = 1
				else ..()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"


obj
	Ramen
		name = "Ramen"
		icon = 'Food.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="Ramen"
		price = 1580
		verb
			Eat()
				if(usr.health < usr.Mhealth)
					usr<<"You eat some Ramen"
					usr.health += 1000
					usr.calories += 2000
					del(src)
				else
					usr<<"You eat some Ramen"
					usr.calories += 2500
					del(src)
			Look()
				usr<<"This is a Bowl of Ramen."
			Drop()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a bowl of [src]"

obj
	Sake
		name = "Sake"
		icon = 'things.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="sake"
		price = 1580
		verb
			Drink()
				if(usr.health < usr.Mhealth)
					usr<<"You drink some Sake"
					usr.health += 50
					usr.drunk=1
					usr<<"You begin to feel relaxed and dazed"
					sleep(350)
					usr<<"The Sake wears off"
					usr.drunk=0
					del(src)
				else
					usr<<"You drink some Sake"
					usr<<"You begin to feel relaxed and dazed"
					usr.drunk=1
					sleep(350)
					usr.drunk=0
					usr<<"The Sake wears off"
					del(src)
			Look()
				usr<<"This is a bottle of Sake."
			Drop()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a bottle of [src]"

obj
	RVeggies
		name = "Vegetable Ramen"
		icon = 'Food.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="Veggies"
		price = 1580
		verb
			Eat()
				if(usr.health < usr.Mhealth)
					usr<<"You eat some Vegetable Ramen"
					usr.health += 1000
					usr.calories += 1000
					del(src)
				else
					usr<<"You eat some Vegetable Ramen"
					usr.calories += 1500
					del(src)
			Look()
				usr<<"This is a Bowl of Vegetable Ramen."
			Drop()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a bowl of [src]"

obj
	ShinoS
		name = "Coat"
		icon = 'ShinoS.dmi'
		worn = 0
		price = 7500
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ShinoS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ShinoS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is coat."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	Susanooo
		icon = 'Susanoo.dmi'
		icon_state = ""
		layer=10
		New()
			.=..()
			spawn()
				while(src)
					sleep(5)
					for(var/mob/M in oview(0,src))
						if(M.Kaiten||M.sphere)
							return
						if(M.counter)
							del(src)
							return
						if(M.PK==0)
							return
						var/damage = round(src.nin*1.7)
						if(damage >= 1)
							M.health -= damage
							M.chakra -= damage
							view(M) << "[M] was sucked into Kamui causing [damage] damage!!"
							var/mob/O = src.Gowner
							M.Death(O)
obj
	ExplodingTag
		name = "Exploding Tag"
		oname="Exploding Tag"
		icon = 'ExplodingTag.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		suffix = "Weapon"
		price = 1000
		New()
			..()
			spawn()
				src.CheckAmount()
		proc
			CheckAmount()
				if(src.ammount==1) return
				src.name= "[oname] ([src.ammount])"

			Explode()
				var/mob/O=src.Gowner
				var/obj/GoukakyuuNorth/K = new /obj/GoukakyuuNorth
				var/obj/GoukakyuuCenter/L = new /obj/GoukakyuuCenter
				var/obj/GoukakyuuSouth/M1 = new /obj/GoukakyuuSouth
				var/obj/GoukakyuuEast/N = new /obj/GoukakyuuEast
				var/obj/GoukakyuuWest/E = new /obj/GoukakyuuWest
				var/obj/GoukakyuuNorthEast/TR = new /obj/GoukakyuuNorthEast
				var/obj/GoukakyuuSouthEast/BR = new /obj/GoukakyuuSouthEast
				var/obj/GoukakyuuNorthWest/TL = new /obj/GoukakyuuNorthWest
				var/obj/GoukakyuuSouthWest/BL = new /obj/GoukakyuuSouthWest
				view(src)<<"[O]'s Tag explodes!"
				if(K){K.loc = src.loc;K.y+=1}
				if(L)L.loc = src.loc
				if(M1){M1.loc = src.loc;M1.y-=1}
				if(E){E.loc = src.loc;E.x-=1}
				if(N){N.loc = src.loc;N.x+=1}
				if(TR){TR.loc = src.loc;TR.y+=1;TR.x+=1}
				if(TL){TL.loc = src.loc;TL.y+=1;TL.x-=1}
				if(BR){BR.loc = src.loc;BR.y-=1;BR.x+=1}
				if(BL){BL.loc = src.loc;BL.y-=1;BL.x-=1}
				var/damage=O.trapskill*1.6
				O.tagset-=1
				for(var/mob/M in view(1,src))
					M<<"You have been hit by [O]'s exploding tag for [damage] damage!"
					O<<"You hit [M] with your exploding tag for [damage] damage!"
					M.health-=damage
					if(M.health<=0)
						M.Death(O)
				O.random=rand(1,5)
				if(O.random==1)
					if(O.Mtrapskill<=O.cap)
						O<<"Your Trap skill increases!"
						O.Mtrapskill+=rand(250,600)
						O.trapskill=O.Mtrapskill
					else
						O<<"You have reached your trap cap."
				if(O.random==2)
					if(O.Mtrapskill<=O.cap)
						O<<"Your Trap skill increases!"
						O.Mtrapskill+=rand(500,1250)
						O.trapskill=O.Mtrapskill
					else
						O<<"You have reached your trap cap."
				if(O.random==3)
					if(O.Mtrapskill<=usr.cap)
						O<<"Your Trap skill increases!"
						O.Mtrapskill+=rand(600,2000)
						O.trapskill=O.Mtrapskill
					else
						O<<"You have reached your trap cap."
				del(src)
		verb
			Look()
				usr<<"This is a Exploding Tag."
			Drop()
				for(var/obj/ExplodingTag/O in usr.contents)
					if(O.ammount<=0)
						del(src)
					else
						var/drop = input("How many Exploding Tags do you wish to drop?")as num
						if(src.ammount<drop)
							usr<<"You don't have that many to drop."
							return
						if(drop<=0)
							usr<<"You cannot do that."
							return
						if(src.ammount>=drop)
							src.ammount-=drop
							usr.Tagcounter-=drop
							O.name= "[O.name] ([O.ammount])"
							var/obj/ExplodingTag/B = new/obj/ExplodingTag
							B.loc=locate(usr.x,usr.y-1,usr.z)
							B.ammount=drop
							view(usr)<<"[usr] drops [drop] Exploding Tags."
							src.name= "[src.name] ([src.ammount])"
							if(src.ammount<=0)
								del(src)
				usr.SaveK()
			Get()
				set src in oview(1)
				if(src.tagset)
					usr<<"Its been Set already"
				else
					if(usr.Tagcounter <= 26)
						usr<<"You picked up an [src]"
						var/counter=0
						for(var/obj/ExplodingTag/O in usr.contents)
							counter+=1
						if(counter<=0)
							Move(usr)
						else
							for(var/obj/ExplodingTag/O in usr.contents)
								O.ammount+=src.ammount
								usr.Tagcounter+=src.ammount
								O.name= "[O.name] ([O.ammount])"
								del(src)
					else
						usr<<"Your only surpose to have 25 at one time."
			SetTag()
				if(usr.firing)
					usr<<"You can't do this right now"
					return
				if(!usr.PK)
					usr<<"NONPK"
					return
				if(usr.x==6&&usr.y==58&&usr.z==20)
					return
				if(usr.tagset>=5)
					usr<<"You can only set 5 tags at a time."
					return
				else
					var/obj/ExplodingTag/B = new/obj/ExplodingTag
					B.loc = usr.loc
					B.Gowner=usr
					B.tagset=1
					usr.tagset+=1
					B.icon_state="Fire"
					usr.verbs+= new /mob/tag/verb/Explode
					for(var/obj/ExplodingTag/O in usr.contents)
						O.ammount-=1
						usr.Tagcounter-=1
						if(O.ammount<=0)
							del(O)
						else
							src.name="[O.oname] ([O.ammount])"

					usr.random=rand(1,3)
					if(usr.random==3)
						if(usr.Mtrapskill<=usr.cap)
							usr<<"Your Trap skill increases!"
							usr.Mtrapskill+=rand(250,1000)
							usr.trapskill=usr.Mtrapskill
						else
							usr<<"You have reached your trap cap."

mob/tag
	verb
		Explode()
			set category = "Exploding Tag"
			for(var/obj/ExplodingTag/T in world)
				if(T.Gowner==usr&&T.tagset)
					T.Explode()
			usr.verbs-= new /mob/tag/verb/Explode()


obj
	Shuriken
		name = "Shuriken"
		icon = 'shuriken.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		density=1
		oname="Shuriken"
		suffix = "Weapon"
		price = 1000
		New()
			..()
			spawn()
				src.CheckAmount()
		proc
			CheckAmount()
				if(src.ammount==1) return
				src.name= "[oname] ([src.ammount])"
		verb
			Look()
				usr<<"This is a standard Shuriken."
			Drop()
				for(var/obj/Shuriken/O in usr.contents)
					if(O.ammount<=0)
						del(src)
					else
						var/drop = input("How many Shuriken do you wish to drop?")as num
						if(src.ammount>=drop)
							usr<<"You don't have that many to drop."
							return
						if(drop<=0)
							usr<<"You cannot do that."
							return
						if(src.ammount>=drop)
							usr.Shurcounter-=drop
							src.ammount-=drop
							O.name= "[O.name] ([O.ammount])"
							var/obj/Shuriken/B = new/obj/Shuriken
							B.loc=locate(usr.x,usr.y-1,usr.z)
							B.ammount=drop
							view(usr)<<"[usr] drops [drop] Shuriken."
							if(src.ammount<=0)
								del(src)
				usr.SaveK()
			Get()
				set src in oview(1)
				usr<<"You picked up [src]"
				if(usr.Shurcounter+src.ammount>=10000)
					usr<<"You're not suppose to have more than 10000 shuriken."
					return
				for(var/obj/Shuriken/O in usr.contents)
					counter+=1
				if(counter<=0)
					Move(usr)
				else
					for(var/obj/Shuriken/O in usr.contents)
						usr.Shurcounter+=src.ammount
						O.ammount+=src.ammount
						O.name= "[O.name] ([O.ammount])"
						del(src)
			Throw()
				if(usr.firing)
					return
				if(usr.weaponthrow)
					return
				if(usr.PK==0)
					usr<<"NONPK ZONE!"
					return
				var/obj/Shuriken/L = new()
				L.loc=usr.loc
				usr.weaponthrow=1
				L.tai=usr.shurikenskill
				L.dir = usr.dir
				L.Move_Delay=0
				L.Gowner=usr
				walk(L,usr.dir)
				for(var/obj/Shuriken/O in usr.contents)
					usr.Shurcounter-=1
					O.ammount-=1
					if(O.ammount<=0)
						del(O)
					else
						src.name="[O.oname] ([O.ammount])"
				sleep(30)
				del(L)
				sleep(8)
				usr.weaponthrow=0
				sleep(30)
		Bump(A)
			walk(src,0)
			density=0
			var/mob/O = src.Gowner
			if(istype(A,/obj/Log))
				for(var/obj/Log/L in oview(3))
					if(L)
						usr<<"You cannot be that close to the log"
						return
				O.random=rand(1,5)
				if(O.random==1)
					if(O.Mshurikenskill<=O.cap)
						O<<"Your shuriken skill increases!"
						O.Mshurikenskill+=rand(300,600)
						O.shurikenskill=O.Mshurikenskill
				if(O.random==2)
					if(O.Mshurikenskill<=O.cap)
						O<<"Your shuriken skill increases!"
						O.Mshurikenskill+=rand(600,1200)
						O.shurikenskill=O.Mshurikenskill
				if(O.random==3)
					if(O.Mshurikenskill<=O.cap)
						O<<"Your shuriken skill increases!"
						O.Mshurikenskill+=rand(1000,2000)
						O.shurikenskill=O.Mshurikenskill
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				var/damage = round(src.tai*2)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by [Gowner]'s Shuriken for [damage] damage!!"
					M.Death(O)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(,/obj/))
				del(src)
obj
	Kageshuriken
		icon='kageshuriken.dmi'
		density=1
		Bump(A)
			var/mob/O = src.Gowner
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				var/damage = src.tai*2
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by [usr]'s Kage Shurikens for [damage] damage!!"
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

obj
	Kunai
		name = "Kunai"
		icon = 'kunai.dmi'
		worn = 0
		density=1
		oname="Kunai"
		price = 1000
		suffix = "Weapon"
		New()
			..()
			spawn()
				src.CheckAmount()
		proc
			CheckAmount()
				if(src.ammount==1) return
				src.name= "[oname] ([src.ammount])"
		verb
			Look()
				usr<<"This is a standard Kunai."
			Drop()
				for(var/obj/Kunai/O in usr.contents)
					if(O.ammount<=0)
						del(src)
					else
						var/drop = input("How many Kunai do you wish to drop?")as num
						if(src.ammount>drop)
							usr<<"You don't have that many to drop."
							return
						if(drop<=0)
							usr<<"You cannot do that."
							return
						if(src.ammount>=drop)
							usr.Kucounter-=drop
							src.ammount-=drop
							O.name= "[O.name] ([O.ammount])"
							var/obj/Kunai/B = new/obj/Kunai
							B.loc=locate(usr.x,usr.y-1,usr.z)
							B.ammount=drop
							view(usr)<<"[usr] drops [drop] Kunai."
							if(src.ammount<=0)
								del(src)
				usr.SaveK()
			Get()
				set src in oview(1)
				usr<<"You picked up [src]"
				if(usr.Kucounter+src.ammount>=10000)
					usr<<"You're not suppost to have more than 10000 kunai in your inventory."
					return
				for(var/obj/Kunai/O in usr.contents)
					counter+=1
				if(counter<=0)
					Move(usr)
				else
					for(var/obj/Kunai/O in usr.contents)
						usr.Kucounter+=src.ammount
						O.ammount+=src.ammount
						O.name= "[O.name] ([O.ammount])"
						del(src)
			Throw()
				if(usr.firing)
					return
				if(usr.weaponthrow)
					return
				if(!usr.PK)
					usr<<"NONPK ZONE!"
					return
				var/obj/Kunai/L = new()
				L.loc=usr.loc
				usr.weaponthrow=1
				L.tai=usr.kunaiskill
				L.dir = usr.dir
				L.Move_Delay = 0
				L.Gowner=usr
				walk(L,usr.dir)
				for(var/obj/Kunai/O in usr.contents)
					usr.Kucounter-=1
					O.ammount-=1
					if(O.ammount<=0)
						del(O)
					else
						src.name="[O.oname] ([O.ammount])"
				sleep(30)
				del(L)
				sleep(8)
				usr.weaponthrow=0
				sleep(30)
		Bump(A)
			walk(src,0)
			density=0
			var/mob/O = src.Gowner
			if(istype(A,/obj/Log))
				for(var/obj/Log/L in oview(3))
					if(L)
						usr<<"You cannot be that close to the log"
						return
				O.random=rand(1,5)
				if(O.random==1)
					if(O.Mkunaiskill<=O.cap)
						O<<"Your kunai skill increases!"
						O.Mkunaiskill+=rand(300,600)
						O.kunaiskill=O.Mkunaiskill
				if(O.random==2)
					if(O.Mkunaiskill<=O.cap)
						O<<"Your kunai skill increases!"
						O.Mkunaiskill+=rand(600,1200)
						O.kunaiskill=O.Mkunaiskill
				if(O.random==3)
					if(O.Mkunaiskill<=O.cap)
						O<<"Your kunai skill increases!"
						O.Mkunaiskill+=rand(1000,2000)
						O.kunaiskill=O.Mkunaiskill
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				var/damage = round(src.tai*2)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by [Gowner]'s Kunai for [damage] damage!!"
					M.Death(O)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(,/obj/))
				del(src)

obj
	Sphere
		icon = 'SandSphere.dmi'
		layer = 999

obj
	tchat
		icon='menus.dmi'
		icon_state="Chat"
		screen_loc="1,4"
		Click()
			switch(input("Whats the chat system you want?", text) in list("World","Say","None"))
				if("World")
					usr.talk="world"
					alert("Your Chat System changed to <<World>>...")
				if("Say")
					usr.talk="say"
					alert("Your Chat System changed to <<Say>>...")
				if("None")
					usr.talk=0
					alert("You turned off your Chat System...")
obj
	trest
		icon='menus.dmi'
		icon_state="Rest"
		screen_loc="1,6"
		Click()
			if(usr.resting)
				usr.resting=0
				usr<<"You stop resting..."
				usr.Frozen = 0
				usr.icon_state = ""
				return
			else
				if(usr.health == usr.Mhealth && usr.chakra == usr.Mchakra)
					usr<<"You don´t need to Rest..."
					return
				if(usr.meditating||usr.onwater)
					return
				usr<<"You begin to Rest..."
				usr.resting=1
				usr.Frozen = 1
				usr.rest()
obj
	tsave
		icon='menus.dmi'
		icon_state="save"
		screen_loc="1,5"
		Click()
			usr.SaveK()
obj
	meditate
		icon='meditate.dmi'
		icon_state=""
	meditate
		icon='meditate.dmi'
		icon_state="Naraka"
	meditate
		icon='meditate.dmi'
		icon_state="Asura"
	meditate
		icon='meditate.dmi'
		icon_state="Preta"
		layer=MOB_LAYER+2

obj/Scroll_Fuuton1
	icon='scroll.dmi'
	icon_state="5"
	verb/Learn_Fuuton1()
		if(usr.rank == "Student")
			usr<<"You Need To Be Genin Or Higher To Learn This Jutsu"
			return
		if(usr.Mnin >=300)
			usr << "<B><font color = blue>You have acquired Fuuton: Kaze Dangan No Jutsu!!";usr.verbs += new /mob/fuuton/verb/FuutonKazeDangan()
			del(src)
		else ..()

	verb/Get()
		set src in oview(1)
		src.loc = usr
		usr<<"You picked up a [src]"
obj/Scroll_Fuuton2
	icon='scroll.dmi'
	icon_state="5"
	verb/Learn_Fuuton2()
		if(usr.rank == "Student")
			usr<<"You Need To Be Genin Or Higher To Learn This Jutsu"
			return
		if(usr.Mnin >=300)
			usr << "<B><font color = blue>You have acquired Fuuton: Renkuudan No Jutsu!!";usr.verbs += new /mob/fuuton/verb/FuutonRenkuudan()
			del(src)
		else ..()

	verb/Get()
		set src in oview(1)
		src.loc = usr
		usr<<"You picked up a [src]"
obj/Scroll_Fuuton3
	icon='scroll.dmi'
	icon_state="5"
	verb/Learn_Fuuton3()
		if(usr.rank == "Student"||usr.rank == "Genin")
			usr<<"You Need To Be Chúnin Or Higher To Learn This Jutsu"
			return
		if(usr.Mnin >=400)
			usr << "<B><font color = blue>You have acquired Fuuton: Daitoppa No Jutsu!!";usr.verbs += new /mob/fuuton/verb/Fuuton_Daitoppa()
			del(src)
		else ..()
	verb/Get()
		set src in oview(1)
		src.loc = usr
		usr<<"You picked up a [src]"
obj/Scroll_Doton1
	icon='scroll.dmi'
	icon_state="4"
	verb/Learn_Doton1()
		if(usr.rank == "Student")
			usr<<"You Need To Be Genin Or Higher To Learn This Jutsu"
			return
		if(usr.Mtai >=500)
			usr << "<B><font color = blue>You have acquired Doton Doryo Dango!!";usr.verbs += new /mob/doton/verb/DotonDoryoDango()
			del(src)
		else ..()
	verb/Get()
		set src in oview(1)
		src.loc = usr
		usr<<"You picked up a [src]"
obj/Scroll_Doton2
	icon='scroll.dmi'
	icon_state="4"
	verb/Learn_Doton2()
		if(usr.rank == "Student"||usr.rank == "Genin")
			usr<<"You Need To Be Chúnin Or Higher To Learn This Jutsu"
			return
		if(usr.Mtai >=600)
			usr << "<B><font color = blue>You have acquired Doton Doryuuheki!!";usr.verbs += new /mob/doton/verb/DotonDoryuuheki()
			del(src)
		else ..()
	verb/Get()
		set src in oview(1)
		src.loc = usr
		usr<<"You picked up a [src]"

obj/Scroll_Rai1
	icon='scroll.dmi'
	icon_state="2"
	verb/Learn_Rai1()
		if(usr.rank == "Student")
			usr<<"You Need To Be Genin Or Higher To Learn This Jutsu"
			return
		if(usr.Mnin >=300)
			usr << "<B><font color = blue>You have acquired Raikyuu No Jutsu!!";usr.verbs += new /mob/rai/verb/Raikyuu()
			del(src)
		else ..()
	verb/Get()
		set src in oview(1)
		src.loc = usr
		usr<<"You picked up a [src]"
obj/Scroll_Rai2
	icon='scroll.dmi'
	icon_state="2"
	verb/Learn_Rai2()
		if(usr.rank == "Student"||usr.rank=="Genin")
			usr<<"You Need To Be Chúnin Or Higher To Learn This Jutsu"
			return
		if(usr.Mnin >=500)
			usr << "<B><font color = blue>You have acquired Rairyuu No Tatsumaki!!";usr.verbs += new /mob/rai/verb/RairyuuNoTatsumaki()
			del(src)
		else ..()

	verb/Get()
		set src in oview(1)
		src.loc = usr
		usr<<"You picked up a [src]"
obj/Scroll_Katon1
	icon='scroll.dmi'
	icon_state="6"
	verb/Learn_Katon1()
		if(usr.Mnin >=100)
			usr << "<B><font color = blue>You learned Katon Goukakyuu!!";usr.verbs += new /mob/katon/verb/KatonGoukakyuu()
			del(src)
			usr:L8 = 1
		else ..()
	else ..()
	verb/Get()
		set src in oview(1)
		src.loc = usr
		usr<<"You picked up a [src]"
obj/Scroll_Katon2
	icon='scroll.dmi'
	icon_state="6"
	verb/Learn_Katon2()
		if(usr.Uchiha == 0&&usr.Mnin >=300)
			usr << "<B><font color = blue>You learned Katon Housenka no jutsu!!";usr.verbs += new /mob/katon/verb/KatonHousenka()
			del(src)
			usr:L9 = 1
		else ..()
	else ..()
	verb/Get()
		set src in oview(1)
		src.loc = usr
		usr<<"You picked up a [src]"




obj
	Zabuzasuit
		name = "Zabuza Suit"
		icon = 'ZabuzaSuit.dmi'//dont have a base icon so cant make weights icon!lol
		price = 2500
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ZabuzaSuit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ZabuzaSuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is Zabuza's suit."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	SevenSM
		name = "7Swordsmen Suit"
		icon = '7SMS.dmi'//dont have a base icon so cant make weights icon!lol
		price = 2500
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= '7SMS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += '7SMS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the 7SwordsMen's suit."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	Kankuorusuit
		name = "Kankuoru Suit"
		icon = 'Kankuoru Suit.dmi'//dont have a base icon so cant make weights icon!lol
		price = 2500
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Kankuoru Suit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Kankuoru Suit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is Kankuoru 's suit."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	RockLeesuit
		name = "RockLee Suit"
		icon = 'RockLeeSuit.dmi'//dont have a base icon so cant make weights icon!lol
		price = 2500
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'RockLeeSuit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'RockLeeSuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a shirt."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	YondaimeJ
		name = "yondcloak"
		icon = 'yondcloak.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'yondcloak.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'yondcloak.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Yondaimes Jacket."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	Headband
		name = "Head Band"
		worn = 0
		icon = 'headband.dmi'
		price = 1580
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'headband.dmi'//temp icon
					usr.overlays -= 'kakashi style.dmi'
					usr.overlays -= 'bandastyle.dmi'
					usr.overlays -= 'leetype.dmi'
					usr.overlays -= 'neijihb.dmi'
					usr.overlays -= 'zabuzahb.dmi'
					usr.overlays -= 'temarihb.dmi'
					usr.overlays -= 'Hokage Headband.dmi'
					usr.overlays -= 'ShikimaruH1.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.bandanat = 0
				else
					switch(input("What head band style would you like?","Headband style picker")in list("Regular","Lee style","Kakashi style","Bandana style","Neiji style","Zabuza style","Temari style","Hokage style","Shikimaru"))
						if("Zabuza style")
							src.worn = 1
							usr.overlays += 'zabuzahb.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 1
						if("Neiji style")
							src.worn = 1
							usr.overlays += 'neijihb.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 1
						if("Regular")
							src.worn = 1
							usr.overlays += 'headband.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 1
						if("Kakashi style")
							src.worn = 1
							usr.overlays += 'kakashi style.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 2
						if("Bandana style")
							src.worn = 1
							usr.overlays += 'bandastyle.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 3
						if("Lee style")
							src.worn = 1
							usr.overlays += 'leetype.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 4
						if("Temari style")
							src.worn=1
							usr.overlays += 'temarihb.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 5
						if("Hokage style")
							src.worn=1
							usr.overlays += 'Hokage Headband.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 5
						if("Shikimaru")
							src.worn=1
							usr.overlays += 'ShikimaruH1.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 5
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	GameModHB
		name = "GM HeadBand"
		worn = 0
		icon = 'HeadbandHG.dmi'
		price = 1580
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'HeadbandHG.dmi'//temp icon
					usr.overlays -= 'kakashi styleHG.dmi'
					usr.overlays -= 'bandastyleHG.dmi'
					usr.overlays -= 'leetypeHG.dmi'
					usr.overlays -= 'ZabuzaHG.dmi'
					usr.overlays -= 'GaaraHG.dmi'
					usr.overlays -= 'HinataHG.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.bandanat = 0
				else
					switch(input("What head band style would you like?","Headband style picker")in list("Regular","Lee style","Kakashi style","Bandana style","Zabuza style","Gaara style","Hinata style"))
						if("Zabuza style")
							src.worn = 1
							usr.overlays += 'ZabuzaHG.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 1
						if("Lee style")
							src.worn = 1
							usr.overlays += 'leetypeHG.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 1
						if("Regular")
							src.worn = 1
							usr.overlays += 'HeadbandHG.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 1
						if("Kakashi style")
							src.worn = 1
							usr.overlays += 'kakashi styleHG.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 2
						if("Bandana style")
							src.worn = 1
							usr.overlays += 'bandastyleHG.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 3
						if("Gaara style")
							src.worn=1
							usr.overlays += 'GaaraHG.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 4
						if("Hinata Style")
							src.worn=1
							usr.overlays += 'HinataHG.dmi'
							usr << "You wear the [src.name]."
							src.suffix = "Equipped"
							usr.bandanat = 5
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	OJacket
		name = "Over Jacket"
		icon = 'OJacket.dmi'
		worn = 0
		price = 4500
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'OJacket.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'OJacket.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is an Over Jacket."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	Casual
		name = "Casual Suit"
		icon = 'Casual.dmi'
		worn = 0
		price = 4500
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Casual.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Casual.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Casual suit."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	Narutosuit
		name = "Naruto suit"
		icon = 'Narutosuit.dmi'
		worn = 0
		price = 4500
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Narutosuit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Narutosuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Naruto suit."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	NarutoShippudan
		name = "Naruto Shippudan Suit"
		icon = 'NarutoShippudan.dmi'
		worn = 0
		price = 4500
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'NarutoShippudan.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'NarutoShippudan.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Naruto Shippudan Suit."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	PoliceCap
		name = "PoliceCap"
		icon = 'PoliceUniform.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'PoliceUniform.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'PoliceUniform.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Captain of the Police Force."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	Police
		name = "Police"
		icon = 'Police.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Police.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Police.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to a member of the Police Force."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	Nejisuit
		name = "Neji suit"
		icon = 'neijisuit.dmi'
		worn = 0
		price = 4500
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'neijisuit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'neijisuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Neji's suit."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	GrassLSuit
		name = "Grass Lord suit"
		icon = 'GFL.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'GFL.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'GFL.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Grass Lord."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	SnowLSuit
		name = "Snow Lord suit"
		icon = 'SFL.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SFL.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SFL.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Snow Lord."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	WaterHeroSuit
		name = "Water Hero suit"
		icon = 'WaterHeroSuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'WaterHeroSuit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'WaterHeroSuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Waterfall Hero."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	TsukikageSuit
		name = "Tsukikage Suit"
		icon = 'KageSuit Tsuki.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KageSuit Tsuki.dmi'
					usr<<"You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KageSuit Tsuki.dmi'
					usr<<"You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is an official suit given to the Tsukikage."
			Drop()
				if(src:worn == 1)
					usr<<"Not while its being worn"
				if(src.worn == 0)
					src.loc = locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]."

obj
	SOSuit
		name = "Sound Org. suit"
		icon = 'SOSuit.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SOSuit.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SoSuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to Sound Org."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	HebiS
		name = "Hebi Cloak"
		icon = 'HebiC.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'HebiC.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'HebiC.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Hebi Suit."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	Paper
		name = "Chakra Element Paper"
		icon = 'Paper.dmi'
		verb
			Break()
				if(usr.fire)
					usr<<"You grasp the paper in your hand. The Paper Begins to Burn...You have the Element of Fire"
					for(var/obj/Paper/S in usr.contents)
						del(S)
					return
				if(usr.water)
					usr<<"You grasp the paper in your hand. The Paper Becomes Soggy and Wet in your hands...You have the Element of Water"
					for(var/obj/Paper/S in usr.contents)
						del(S)
					return
				if(usr.lightning)
					usr<<"You grasp the paper in your hand. The Paper Begins to Wrinkle...You have the Element of Lightning"
					for(var/obj/Paper/S in usr.contents)
						del(S)
					return
				if(usr.wind)
					usr<<"You grasp the paper in your hand. The Paper is cut in half...You have the Element of Wind"
					for(var/obj/Paper/S in usr.contents)
						del(S)
					return
				if(usr.earth)
					usr<<"You grasp the paper in your hand. The Paper Begins to crumble and turn into Dirt...You have the Element of the Earth"
					for(var/obj/Paper/S in usr.contents)
						del(S)
					return
				else
					usr<<"You were not born with the Chakra Element Type."
					return
obj
	AKAH
		name = "Akatsuki Hat"
		icon = 'AKAH.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AKAH.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AKAH.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Akatsuki Hat."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	redb
		icon = 'turf2.dmi'
		icon_state="RedB"
		layer = MOB_LAYER+2

obj
	AKAS
		name = "Akatsuki Suit"
		icon = 'AKAS.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AKAS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AKAS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Akatsuki suit."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
	LH
		name = "Lords Hat"
		icon = 'LH.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'LH.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'LH.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Lords Hat."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	HSuit
		name = "Hunter Suit"
		icon = 'HSuit.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'HSuit.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'HSuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to Hunters."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	Markings
		name = "CS Lvl 1"
		icon = 'CSItem.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'CSItem.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'CSItem.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the cursed seal markings."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	Markings2
		name = "CS Lvl 2"
		icon = 'cs2.dmi'//dont have a base icon so cant make weights icon!lol
		price = 250
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'cs2.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'cs2.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the cursed seal markings."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	Zabuzasword
		name = "Kubikiri Houcho"
		icon = 'Zabuza sword.dmi'
		worn = 0
		price = 25000
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'Zabuza sword.dmi'
					usr.verbs -= new /mob/Kenjutsu/verb/Kubikiribocho
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.nin = usr.Mnin
					usr.swordD = 0
				else
					src:worn = 1
					usr.overlays += 'Zabuza sword.dmi'
					usr.verbs += new /mob/Kenjutsu/verb/Kubikiribocho
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.nin += 1000
					usr.swordD = usr.cap*1.2
			Look()
				usr<<"This is the sword that zabuza uses."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	Windmill
		name = "Windmill Shuriken"
		icon = 'windmill.dmi'
		oname="Windmill Shuriken"
		worn = 0
		density=1
		price = 30000
		verb
			Look()
				usr<<"This is the Shuriken that Sasuke uses."
			Drop()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.windmills-=1
				usr.SaveK()
			Get()
				if(usr.windmills <= 1)
					set src in oview(1)
					src.loc = usr
					usr.windmills+=1
					usr<<"You picked up a [src]"
				else
					usr<<"You can only carry 2 at a time."
			Throw()
				if(usr.firing)
					return
				if(usr.weaponthrow)
					return
				if(usr.PK==0)
					usr<<"NONPK ZONE!"
					return
				src.loc=usr.loc
				usr.weaponthrow=1
				usr.windmills-=1
				src.nin=usr.shurikenskill
				src.dir = usr.dir
				src.Move_Delay=1
				src.Gowner=usr
				walk(src,usr.dir)
				sleep(10)
				usr.weaponthrow=0
				del(src)
		Bump(A)
			walk(src,0)
			var/mob/O = src.Gowner
			if(istype(A,/obj/Log))
				for(var/obj/Log/L in oview(3))
					if(L)
						usr<<"You cannot be that close to the log"
						return
				O.random=rand(1,5)
				if(O.random==1)
					if(O.Mshurikenskill<=O.cap)
						O<<"Your shuriken skill increases!"
						O.Mshurikenskill+=rand(300,600)
						O.shurikenskill=O.Mshurikenskill
				if(O.random==2)
					if(O.Mshurikenskill<=O.cap)
						O<<"Your shuriken skill increases!"
						O.Mshurikenskill+=rand(600,1200)
						O.shurikenskill=O.Mshurikenskill
				if(O.random==3)
					if(O.Mshurikenskill<=O.cap)
						O<<"Your shuriken skill increases!"
						O.Mshurikenskill+=rand(1000,2000)
						O.shurikenskill=O.Mshurikenskill
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				var/damage = round(src.nin*2)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by [Gowner]'s Windmill for [damage] damage!!"
					sleep(3)
					M.Death(O)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(,/obj/))
				del(src)
			density=0
obj
	Trikunai
		name = "Trikunai"
		icon = 'trikunai.dmi'
		worn = 0
		density=1
		price = 30000
		verb
			Look()
				usr<<"This a Tri Pointed Kunai."
			Drop()
				if(src.worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.trikunai-=1
					usr.SaveK()
			Get()
				if(usr.trikunai <= 1)
					set src in oview(1)
					src.loc = usr
					usr<<"You picked up a [src]"
				else
					usr<<"You can only carry 2 at a time."
			Throw()
				if(usr.firing)
					return
				if(usr.weaponthrow)
					return
				if(usr.PK==0)
					usr<<"NONPK ZONE!"
					return
				var/obj/Trikunai/L = new()
				usr.weaponthrow=1
				usr.trikunai-=1
				L.loc=usr.loc
				L.nin=usr.kunaiskill
				L.dir = usr.dir
				L.Move_Delay=1.5
				L.Gowner=usr
				walk(L,usr.dir)
				sleep(30)
				del(L)
				src.loc=locate(usr.x,usr.y,usr.z)
				sleep(3)
				usr.weaponthrow=0

		Bump(A)
			var/mob/O = src.Gowner
			if(istype(A,/obj/Log))
				for(var/obj/Log/L in oview(3))
					if(L)
						usr<<"You cannot be that close to the log"
						return
				O.random=rand(1,3)
				if(O.random==3)
					if(O.Mkunaiskill<=O.cap)
						O<<"Your kunai skill increases!"
						O.Mkunaiskill+=2
						O.kunaiskill=O.Mkunaiskill
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				var/damage = round(src.nin*2)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by [Gowner]'s Trikunai for [damage] damage!!"
					M.Death(O)

			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(,/obj/))
				del(src)

obj
	oceand
		name = "Ocean Drinker"
		icon = 'OceanDrinker.dmi'
		worn = 0
		price = 25000
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'OceanDrinker.dmi'
					usr << "You remove the [src.name]."
					usr.verbs -= new /mob/Ikey/verb/Tidal()
					usr.verbs -= new /mob/Ikey/verb/RainW()
					src.suffix = ""
					usr.tai = usr.Mtai
					usr.swordD = 0
				else
					src:worn = 1
					usr.overlays += 'OceanDrinker.dmi'
					usr << "You wear the [src.name]."
					usr.verbs += new /mob/Ikey/verb/Tidal()
					usr.verbs += new /mob/Ikey/verb/RainW()
					src.suffix = "Equipped"
					usr.tai += 1000
					usr.swordD = usr.cap*1.2
			Look()
				usr<<"This is the sword that Ikey Eternus uses."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	RaikageS
		name = "Raikage Blade"
		icon = 'SwordC.dmi'
		icon_state = "Cloud"
		worn = 0
		price = 25000
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'SwordC.dmi'
					icon_state="Cloud"
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.tai = usr.Mtai
					usr.swordD = 0
				else
					src:worn = 1
					usr.overlays += 'SwordC.dmi'
					icon_state = "Cloud"
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 1000
					usr.swordD = usr.cap*1.2
			Look()
				usr<<"This is the sword that the Raikage uses."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	HokageS
		name = "Hokage Blade"
		icon = 'HokageSword.dmi'
		worn = 0
		price = 25000
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'HokageSword.dmi'
					icon_state = "Leaf"
					usr << "You remove the [src.name]."
					usr.verbs -= new /mob/Reaper/verb/Reaper()
					src.suffix = ""
					usr.nin = usr.Mnin
					usr.swordD = 0
				else
					src:worn = 1
					usr.overlays += 'HokageSword.dmi'
					icon_state = "Leaf"
					usr << "You wear the [src.name]."
					usr.verbs += new /mob/Reaper/verb/Reaper()
					src.suffix = "Equipped"
					usr.nin += 5000
					usr.swordD = usr.cap*1.2
			Look()
				usr<<"This is the sword that the Hokage uses."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	Mondaisword
		name = "Mondai Sword"
		icon = 'Mondai sword.dmi'
		worn = 0
		price = 25000
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'Mondai sword.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.tai = usr.Mtai
					usr.swordD = 0
				else
					src:worn = 1
					usr.overlays += 'Mondai sword.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 1000
					usr.swordD = usr.cap*1.2
			Look()
				usr<<"This is the sword that Mondai uses."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	BlueB
		name = "Blue Blade"
		icon = 'BlueB.dmi'
		worn = 0
		price = 25000
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'BlueB.dmi'
					usr.verbs -= new /mob/rain/verb/JouroSenban()
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.nin = usr.Mnin
					usr.tai = usr.Mtai
					usr.swordD = 0
				else
					src:worn = 1
					usr.overlays += 'BlueB.dmi'
					usr.verbs += new /mob/rain/verb/JouroSenban()
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.nin += 3000
					usr.tai += 4500
					usr.swordD = usr.cap*1.2
			Look()
				usr<<"This is the Blue Blade."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	WSpear
		name = "Spear"
		icon = 'WSpear.dmi'
		worn = 0
		price = 25000
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'WSpear.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.tai = usr.Mtai
					usr.swordD = 0
				else
					src:worn = 1
					usr.overlays += 'WSpear.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 5000
					usr.swordD = usr.cap*1.2
			Look()
				usr<<"This is the Spear."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	Red
		name = "Red Blade"
		icon = 'RedBlade.dmi'
		worn = 0
		price = 25000
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'RedBlade.dmi'
					usr.verbs -= new /mob/katon/verb/Katonheki()
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.tai = usr.Mtai
					usr.swordD = 0
				else
					src:worn = 1
					usr.overlays += 'RedBlade.dmi'
					usr.verbs += new /mob/katon/verb/Katonheki()
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 5000
					usr.swordD = usr.cap*1.2
			Look()
				usr<<"This is the Red Blade."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	RaidenS
		name = "Kiba"
		icon = 'RaidenS.dmi'
		worn = 0
		price = 25000
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'RaidenS.dmi'
					usr.verbs -= new /mob/Kenjutsu/verb/Kiba
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.tai = usr.Mtai
					usr.swordD = 0
				else
					src:worn = 1
					usr.overlays += 'RaidenS.dmi'
					usr.verbs += new /mob/Kenjutsu/verb/Kiba
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 5000
					usr.swordD = usr.cap*1.2
			Look()
				usr<<"This is Kiba, a Sword from the 7Swordsmen of the Mist."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	Katana
		name = "Katana"
		icon = 'Katana.dmi'
		worn = 0
		price = 25000
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'Katana.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.tai = usr.Mtai
					usr.swordD = 0
				else
					src:worn = 1
					usr.overlays += 'Katana.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 5000
					usr.swordD = usr.cap*1.2
			Look()
				usr<<"This is the Katana of the 7Swordsmen."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	Nuibari
		name = "Nuibari"
		icon = 'Nuibari.dmi'
		worn = 0
		price = 25000
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'Nuibari.dmi'
					usr.verbs -= new /mob/Kenjutsu/verb/Nuibari
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.tai = usr.Mtai
					usr.swordD = 0
				else
					src:worn = 1
					usr.overlays += 'Nuibari.dmi'
					usr.verbs += new /mob/Kenjutsu/verb/Nuibari
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 5000
					usr.swordD = usr.cap*1.2
			Look()
				usr<<"This is the Nuibari."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	Kabutowari
		name = "Kabutowari"
		icon = 'BombB.dmi'
		worn = 0
		price = 25000
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'BombB.dmi'
					usr.verbs -= new /mob/Kenjutsu/verb/Kabutowari
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.tai = usr.Mtai
					usr.swordD = 0
				else
					src:worn = 1
					usr.overlays += 'BombB.dmi'
					usr.verbs += new /mob/Kenjutsu/verb/Kabutowari
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 5000
					usr.swordD = usr.cap*1.2
			Look()
				usr<<"This is the Bomb Blade of the 7Swordsmen."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	Chojuro
		name = "Hirameikarei"
		icon = 'ChojuroS.dmi'
		worn = 0
		price = 25000
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'ChojuroS.dmi'
					usr.verbs -= new /mob/Kenjutsu/verb/Hirameikarei
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.tai = usr.Mtai
					usr.swordD = 0
				else
					src:worn = 1
					usr.overlays += 'ChojuroS.dmi'
					usr.verbs += new /mob/Kenjutsu/verb/Hirameikarei
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 5000
					usr.swordD = usr.cap*1.2
			Look()
				usr<<"This is the Hirameikarei of the 7Swordsmen."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	Shibuki
		name = "Shibuki"
		icon = 'Shibuki.dmi'
		worn = 0
		price = 25000
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'Shibuki.dmi'
					usr.verbs -= new /mob/Kenjutsu/verb/Shibuki
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.tai = usr.Mtai
					usr.swordD = 0
				else
					src:worn = 1
					usr.overlays += 'Shibuki.dmi'
					usr.verbs += new /mob/Kenjutsu/verb/Shibuki
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 5000
					usr.swordD = usr.cap*1.2
			Look()
				usr<<"This is the Shibuki Sword of the 7Swordsmen."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	Fan
		name = "Fan"
		icon = 'Temari Fan.dmi'
		icon_state = "Fan"
		worn = 0
		price = 25000
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'Temari Fan.dmi'
					usr.icon_state = "Fan"
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.nin = usr.Mnin
					usr.swordD = 0
				else
					src:worn = 1
					usr.overlays += 'Temari Fan.dmi'
					usr.icon_state = "Fan"
					usr<< "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.nin += 1000
					usr.swordD = usr.cap*1.2
			Look()
				usr<<"This is the Fan Temari uses."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	Kisamesword
		name = "Samehada"
		icon = 'KisamesSword.dmi'
		worn = 0
		price = 25000
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'KisamesSword.dmi'
					usr.verbs -= new /mob/suiton/verb/SuirouNoJutsu
					usr.verbs -= new /obj/bunshins/SuitonBunshinnojutsu/verb/SuitonBunshinNoJutsu
					usr.verbs -= new /mob/Hoshigaki/verb/Sharkz
					usr.verbs -= new /mob/Hoshigaki/verb/Shark
					usr.verbs -= new /mob/Kenjutsu/verb/Samehada
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.tai = usr.Mtai
					usr.swordD = 0
				else
					src:worn = 1
					usr.overlays += 'KisamesSword.dmi'
					usr.verbs += new /mob/suiton/verb/SuirouNoJutsu
					usr.verbs += new /obj/bunshins/SuitonBunshinnojutsu/verb/SuitonBunshinNoJutsu
					usr.verbs += new /mob/Hoshigaki/verb/Sharkz
					usr.verbs += new /mob/Hoshigaki/verb/Shark
					usr.verbs += new /mob/Kenjutsu/verb/Samehada
					usr<< "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 5000
					usr.swordD = usr.cap*1.2
			Look()
				usr<<"This is the sword that Kisame uses."
			Drop()
				if(src.worn == 1)
					usr << "Not while its being worn."
				if(src.worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	SasukeSword
		name = "SasukeSword"
		icon = 'SasukeSword2.dmi'
		worn = 0
		price = 25000
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'SasukeSword2.dmi'
					usr<< "You remove the [src.name]."
					src.suffix = ""
					usr.tai = usr.Mtai
					usr.nin = usr.Mnin
					usr.swordD = 0
				else
					src:worn = 1
					usr.overlays += 'SasukeSword2.dmi'
					usr<< "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 3000
					usr.nin += 7000
					usr.swordD = usr.cap*1.2
			Look()
				usr<<"This is the sword givin to Sasuke by Orochimaru ."
			Drop()
				if(src.worn == 1)
					usr << "Not while its being worn."
				if(src.worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	AKASW
		name = "Akatsuki Sword"
		icon = 'HidanS.dmi'
		worn = 0
		price = 25000
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'HidanS.dmi'
					usr<< "You remove the [src.name]."
					src.suffix = ""
					usr.tai = usr.Mtai
					usr.nin = usr.Mnin
					usr.swordD = 0
				else
					src:worn = 1
					usr.overlays += 'HidanS.dmi'
					usr<< "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 3000
					usr.nin += 7000
					usr.swordD = usr.cap*1.2
			Look()
				usr<<"This is the Akatsuki Sword ."
			Drop()
				if(src.worn == 1)
					usr << "Not while its being worn."
				if(src.worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	HidanSword
		name = "Hidansword"
		icon = 'HidanSword.dmi'
		worn = 0
		price = 25000
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'HidanSword.dmi'
					usr<< "You remove the [src.name]."
					src.suffix = ""
					usr.tai = usr.Mtai
					usr.nin = usr.Mnin
					usr.swordD = 0
				else
					src:worn = 1
					usr.overlays += 'HidanSword.dmi'
					usr<< "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 3000
					usr.nin += 7000
					usr.swordD = usr.cap*1.2
			Look()
				usr<<"This is Hidans Sword ."
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	KunaiKnife
		name = "Kunai Knife"
		icon = 'kunaiknife.dmi'
		worn = 0
		price = 1000
		verb
			Wear()
				if(usr:Kunaiworn == 1)
					src.worn = 0
					usr:Kunaiworn = 0
					usr.overlays -= 'kunaiknife.dmi'
					usr.overlays -= 'kunaiknife.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.tai = usr.Mtai
				else
					src.worn = 1
					usr:Kunaiworn = 1
					usr.overlays += 'kunaiknife.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 100

			Look()
				usr<<"This a standard Kunai Knife."
			Drop()
				if(src.worn)
					usr << "Not while its being worn."
					return
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	Pill
		name = "Pill"
		icon = 'things.dmi'//dont have a base icon so cant make weights icon!lol
		icon_state="Pill"
		verb
			Eat()
				if(usr.health < usr.Mhealth)
					usr<<"You eat a pill"
					usr.health += 1000
					usr.chakra += 1000
					usr.calories += 100
					del(src)
				else
					usr<<"You eat a pill"
					usr.calories += 150
					del(src)
			Look()
				usr<<"This is a pill."
			Drop()
				src.loc=locate(usr.x,usr.y-1,usr.z)
				usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	SanninSuit
		name = "Sannin suit"
		icon = 'Anbuattacksuit.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Anbuattacksuit.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Anbuattacksuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to Sannin."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	BigHat
		name = "Big Hat"
		icon = 'BigHat.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'BigHat.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'BigHat.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Big Hat."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	Sandles
		name = "Sandles"
		icon = 'Bsandels.dmi'//dont have a base icon so cant make weights icon!lol
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Bsandels.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Bsandels.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"Sandles."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	BoneSword
		name = "Bone Sword"
		icon = 'yanagi.dmi'
		worn = 0
		price = 0
		verb
			Wear()
				if(usr:BSworn == 1)
					src.worn = 0
					usr:BSworn = 0
					usr.overlays -= 'yanagi.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.bonesword = 0
					usr.swordD = 0
					usr.tai = usr.Mtai
				else
					if(usr.spinesword)
						usr<<"You can only weild one Bone sword at a time"
						return
					src.worn = 1
					usr:BSworn = 1
					usr.overlays += 'yanagi.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 1000
					usr.swordD = usr.cap*1.2
					usr.bonesword = 1
			Look()
				usr<<"This is a sword made from the arm bone."
obj
	Spinewhip
		name = "Spine Bone Whip"
		icon = 'tessenka.dmi'
		worn = 0
		price = 0
		verb
			Wear()
				if(usr:SWworn == 1)
					src:worn = 0
					usr:SWworn = 0
					usr.overlays -= 'tessenka.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.spinesword = 0
					usr.tai = usr.Mtai
					usr.swordD=0
				else
					if(usr.bonesword)
						usr<<"You must weild one or the other"
						return
					src.worn = 1
					usr:SWworn = 1
					usr.overlays += 'tessenka.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 1500
					usr.spinesword = 1
					usr.swordD = usr.cap*1.2
			Look()
				usr<<"This is a whip made from the spine."

	kusanagi
		icon = 'Kusanagi.dmi'
		density = 1
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					del(src)
					return
				if(M.PK==0)
					return
				var/damage = round(src.tai*2+src.nin*2)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Kusanagi Dageki for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)

	SpiderBow
		name = "SpiderBow"
		icon = 'SpiderArrow.dmi'
		worn = 0
		price = 0
		verb
			Wear()
				if(usr:SWworn == 1)
					src:worn = 0
					usr:SWworn = 0
					usr.overlays -= 'SpiderArrow.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.spinesword = 0
					usr.tai = usr.Mtai
					usr.swordD=0
				else
					if(usr.bonesword)
						usr<<"You must weild one or the other"
						return
					src.worn = 1
					usr:SWworn = 1
					usr.overlays += 'SpiderArrow.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.nin += 3000
					usr.spinesword = 1
					usr.swordD = usr.cap*1.2
			Look()
				usr<<"This is a Bow made from a Spiders Web."
obj
	Gourd
		name = "Gourd"
		icon = 'Gord.dmi'//dont have a base icon so cant make weights icon!lol
		price = 3000
		worn = 0
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'Gord.dmi'//temp icon
					usr << "You remove the [src.name]."
					usr.goud=0
					src.suffix = ""
					usr.nin=usr.Mnin
				else
					if(usr.goud==1)
						usr<<"You cant wear more then one."
						return
					src:worn = 1
					usr.overlays += 'Gord.dmi'
					usr << "You wear the [src.name]."
					usr.goud=1
					src.suffix = "Equipped"
					usr.nin += 1000
			Look()
				usr<<"This is a gourd filled with sand."
			Drop()
				if(src.worn)
					usr << "Not while its being worn."
				if(!src.worn)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()

				set src in oview(1)
				src.loc = usr
				usr<<"You picked up [src]"

obj
	KibaS
		name = "Sweater"
		icon = 'KibaS.dmi'
		worn = 0
		price = 750
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KibaS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KibaS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a sweater."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	HakuS
		name = "Haku Suit"
		icon = 'HakuS.dmi'
		worn = 0
		price = 750
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'HakuS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'HakuS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is Hakus suit."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	NaraS
		name = "Nara Suit"
		icon = 'NaraS.dmi'
		worn = 0
		price = 750
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'NaraS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'NaraS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Nara Shirt."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	ChojiS
		name = "Choji Suit"
		icon = 'ChojiS.dmi'
		worn = 0
		price = 750
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ChojiS.dmi'//temp icon
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ChojiS.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Choji Suit."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

obj
	elec
		name = "elec"
		icon = 'elec.dmi'

obj
	Doll
		name = "Guard"
		icon = 'karasu.dmi'

obj
	Note
		name = "Notes"
		icon = 'notes.dmi'

obj
	KabutoSuit
		name = "Kabuto Suit"
		icon = 'KabutoSuit.dmi'
		price = 250
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KabutoSuit.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KabutoSuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Medic Suit."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	SasukeSuit
		name = "Sasake Suit"
		icon = 'SasukeSuit.dmi'
		price = 250
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'SasukeSuit.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'SasukeSuit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is Sasake's Suit."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	GMCoat
		name = "GM Coat"
		icon = 'gmcoat.dmi'//dont have a base icon so cant make weights icon!lol
		price = 999999999
		worn = 0
		verb
			Wear()

				if(!src.worn)
					src.worn=1
					usr.overlays += 'gmcoat.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
				else
					src:worn = 0
					usr.overlays -= 'gmcoat.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.overlays -= 'gmcoat.dmi'
			Drop()

				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()

				set src in oview(1)
				src.loc = usr
				usr<<"You picked up the [src]"
	GMnecklace
		name = "GM Neck Lace"
		icon = 'GMneck.dmi'//dont have a base icon so cant make weights icon!lol
		price = 999999999
		worn = 0
		verb
			Wear()

				if(!src.worn)
					src.worn=1
					usr.overlays += 'GMneck.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
				else
					src:worn = 0
					usr.overlays -= 'GMneck.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.overlays -= 'GMneck.dmi'
			Drop()

				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()

				set src in oview(1)
				src.loc = usr
				usr<<"You picked up [src]"

obj
	ky1
		icon='kyuubi12.dmi'
		icon_state="1"
		density=1
		pixel_y=32
		name="2"
obj
	ky2
		icon='kyuubi12.dmi'
		icon_state="2"
		density=1
		pixel_x=32
		name="2"
obj
	ky3
		icon='kyuubi12.dmi'
		icon_state="3"
		density=1
		pixel_x=32
		pixel_y=32
		name="2"
obj
	ky4
		icon='kyuubi12.dmi'
		icon_state="4"
		density=1
		pixel_y=64
		name="2"
obj
	ky5
		icon='Kyuubi12.dmi'
		icon_state="5"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky6
		icon='Kyuubi12.dmi'
		icon_state="6"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky7
		icon='Kyuubi12.dmi'
		icon_state="7"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky8
		icon='Kyuubi12.dmi'
		icon_state="8"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky9
		icon='Kyuubi12.dmi'
		icon_state="9"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky10
		icon='Kyuubi12.dmi'
		icon_state="10"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky11
		icon='Kyuubi12.dmi'
		icon_state="11"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky12
		icon='Kyuubi12.dmi'
		icon_state="12"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"

obj
	ky13
		icon='Kyuubi12.dmi'
		icon_state="13"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky14
		icon='Kyuubi12.dmi'
		icon_state="14"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky15
		icon='Kyuubi12.dmi'
		icon_state="15"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky16
		icon='Kyuubi12.dmi'
		icon_state="16"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky17
		icon='Kyuubi12.dmi'
		icon_state="17"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky18
		icon='Kyuubi12.dmi'
		icon_state="18"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky19
		icon='Kyuubi12.dmi'
		icon_state="19"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky20
		icon='Kyuubi12.dmi'
		icon_state="20"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky21
		icon='Kyuubi12.dmi'
		icon_state="21"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky22
		icon='Kyuubi12.dmi'
		icon_state="22"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky23
		icon='Kyuubi12.dmi'
		icon_state="23"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"
obj
	ky24
		icon='Kyuubi12.dmi'
		icon_state="24"
		density=1
		pixel_x=32
		pixel_y=64
		name="2"

/*----------------------------------------------------------------*/

						//AnbuMasks\\

/*----------------------------------------------------------------*/

	AnbuBi
		name = "Bird Mask"
		icon = 'AnbuBi.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AnbuBi.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AnbuBi.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the Mask given to Spec. Abnu."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	AnbuCa
		name = "Cat Mask"
		icon = 'AnbuCa.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AnbuCa.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AnbuCa.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the Mask given to Spec. Anbu."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	AnbuB
		name = "Rain Anbu Mask"
		icon = 'AnbuB.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AnbuB.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AnbuB.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the Mask given to Rain Anbu."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	AnbuLB
		name = "Mist Anbu Mask"
		icon = 'AnbuLB.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AnbuLB.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AnbuLB.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the Mask given to Mist Anbu."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	AnbuG
		name = "Grass Anbu Mask"
		icon = 'AnbuG.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AnbuG.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AnbuG.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the Mask given to Grass Anbu."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	AnbuGr
		name = "Cloud Anbu Mask"
		icon = 'AnbuGr.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AnbuGr.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AnbuGr.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the Mask given to Cloud Anbu."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	AnbuW
		name = "Snow Anbu Mask"
		icon = 'AnbuW.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AnbuW.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AnbuW.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Mask given to Snow Anbu."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	AnbuBla
		name = "Sound Anbu Mask"
		icon = 'AnbuBla.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AnbuBla.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AnbuBla.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the Mask given to Sound Anbu."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	AnbuR
		name = "Leaf Anbu Mask"
		icon = 'AnbuR.dmi'
		layer = 999
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AnbuR.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AnbuR.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the Mask given to Leaf Anbu."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	AnbuBr
		name = "Rock Abnu Mask"
		icon = 'AnbuBr.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AnbuBr.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AnbuBr.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the Mask given to Rock Anbu."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	AnbuY
		name = "Sand Anbu Mask"
		icon = 'AnbuY.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AnbuY.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AnbuY.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the Mask given to Sand Anbu."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	AnbuDB
		name = "Waterfall Anbu Mask"
		icon = 'AnbuDB.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'AnbuDB.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'AnbuDB.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is the Mask given to Waterfall Anbu."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

/*----------------------------------------------------------------*/

						//Chuunin Vests\\

/*----------------------------------------------------------------*/

obj
	ChuuninVestLeaf
		name = "Leaf Chúnin Vest"
		icon = 'ChuuninVest Leaf.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ChuuninVest Leaf.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ChuuninVest Leaf.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Official Vest given to Leaf Chúnin."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	ChuuninVestSound
		name = "Sound Chúnin Vest"
		icon = 'ChuuninVest Sound.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ChuuninVest Sound.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ChuuninVest Sound.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Official Vest given to Sound Chúnin."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	ChuuninVestSand
		name = "Sand Chúnin Vest"
		icon = 'ChuuninVest Sand.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ChuuninVest Sand.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ChuuninVest Sand.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Official Vest given to Sand Chúnin."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	ChuuninVestGrass
		name = "Grass Chúnin Vest"
		icon = 'ChuuninVest Grass.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ChuuninVest Grass.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ChuuninVest Grass.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Official Vest given to Grass Chúnin."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	ChuuninVestSnow
		name = "Snow Chúnin Vest"
		icon = 'ChuuninVest Snow.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ChuuninVest Snow.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ChuuninVest Snow.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Official Vest given to Snow Chúnin."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	ChuuninVestRain
		name = "Rain Chúnin Vest"
		icon = 'ChuuninVest Rain.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ChuuninVest Rain.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ChuuninVest Rain.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Official Vest given to Rain Chúnin."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	ChuuninVestMist
		name = "Mist Chúnin Vest"
		icon = 'ChuuninVest Mist.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ChuuninVest Mist.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ChuuninVest Mist.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Official Vest given to Mist Chúnin."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	ChuuninVestWaterfall
		name = "Waterfall Chúnin Vest"
		icon = 'ChuuninVest Waterfall.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ChuuninVest Waterfall.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ChuuninVest Waterfall.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Official Vest given to Waterfall Chúnin."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	ChuuninVestRock
		name = "Rock Chúnin Vest"
		icon = 'ChuuninVest Rock.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ChuuninVest Rock.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ChuuninVest Rock.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Official Vest given to Rock Chúnin."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	ChuuninVestCloud
		name = "Cloud Chúnin Vest"
		icon = 'ChuuninVest Cloud.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'ChuuninVest Cloud.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'ChuuninVest Cloud.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a Official Vest given to Cloud Chúnin."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"


/*----------------------------------------------------------------*/

					//Heaven Curse: Form Three\\

/*----------------------------------------------------------------*/

obj
	CurseSeal3_BC
		icon = 'Curse Form BC.dmi'
	CurseSeal3_BT
		icon = 'Curse Form BT.dmi'
		pixel_y=32
	CurseSeal3_BBL
		icon = 'Curse Form BBL.dmi'
		pixel_x=-32
	CurseSeal3_BBR
		icon = 'Curse Form BBR.dmi'
		pixel_x=32
	CurseSeal3_BTL
		icon = 'Curse Form BTL.dmi'
		pixel_y=32
		pixel_x=-32
	CurseSeal3_BTR
		icon = 'Curse Form BTR.dmi'
		pixel_y=32
		pixel_x=32

	CurseSeal3_BlC
		icon = 'Curse Form BlC.dmi'
	CurseSeal3_BlT
		icon = 'Curse Form BlT.dmi'
		pixel_y=32
	CurseSeal3_BlBL
		icon = 'Curse Form BlBL.dmi'
		pixel_x=-32
	CurseSeal3_BlBR
		icon = 'Curse Form BlBR.dmi'
		pixel_x=32
	CurseSeal3_BlTL
		icon = 'Curse Form BlTL.dmi'
		pixel_y=32
		pixel_x=-32
	CurseSeal3_BlTR
		icon = 'Curse Form BlTR.dmi'
		pixel_y=32
		pixel_x=32

	CurseSeal3_RC
		icon = 'Curse Form RC.dmi'
	CurseSeal3_RT
		icon = 'Curse Form RT.dmi'
		pixel_y=32
	CurseSeal3_RBL
		icon = 'Curse Form RBL.dmi'
		pixel_x=-32
	CurseSeal3_RBR
		icon = 'Curse Form RBR.dmi'
		pixel_x=32
	CurseSeal3_RTL
		icon = 'Curse Form RTL.dmi'
		pixel_y=32
		pixel_x=-32
	CurseSeal3_RTR
		icon = 'Curse Form RTR.dmi'
		pixel_y=32
		pixel_x=32

	CurseSeal3_VC
		icon = 'Curse Form VC.dmi'
	CurseSeal3_VT
		icon = 'Curse Form VT.dmi'
		pixel_y=32
	CurseSeal3_VBL
		icon = 'Curse Form VBL.dmi'
		pixel_x=-32
	CurseSeal3_VBR
		icon = 'Curse Form VBR.dmi'
		pixel_x=32
	CurseSeal3_VTL
		icon = 'Curse Form VTL.dmi'
		pixel_y=32
		pixel_x=-32
	CurseSeal3_VTR
		icon = 'Curse Form VTR.dmi'
		pixel_y=32
		pixel_x=32

	CurseSeal3_WC
		icon = 'Curse Form WC.dmi'
	CurseSeal3_WT
		icon = 'Curse Form WT.dmi'
		pixel_y=32
	CurseSeal3_WBL
		icon = 'Curse Form WBL.dmi'
		pixel_x=-32
	CurseSeal3_WBR
		icon = 'Curse Form WBR.dmi'
		pixel_x=32
	CurseSeal3_WTL
		icon = 'Curse Form WTL.dmi'
		pixel_y=32
		pixel_x=-32
	CurseSeal3_WTR
		icon = 'Curse Form WTR.dmi'
		pixel_y=32
		pixel_x=32

	CurseSeal3_YC
		icon = 'Curse Form YC.dmi'
	CurseSeal3_YT
		icon = 'Curse Form YT.dmi'
		pixel_y=32
	CurseSeal3_YBL
		icon = 'Curse Form YBL.dmi'
		pixel_x=-32
	CurseSeal3_YBR
		icon = 'Curse Form YBR.dmi'
		pixel_x=32
	CurseSeal3_YTL
		icon = 'Curse Form YTL.dmi'
		pixel_y=32
		pixel_x=-32
	CurseSeal3_YTR
		icon = 'Curse Form YTR.dmi'
		pixel_y=32
		pixel_x=32

	CurseSeal3_TC
		icon = 'Curse Form TC.dmi'
	CurseSeal3_TT
		icon = 'Curse Form TT.dmi'
		pixel_y=32
	CurseSeal3_TBL
		icon = 'Curse Form TBL.dmi'
		pixel_x=-32
	CurseSeal3_TBR
		icon = 'Curse Form TBR.dmi'
		pixel_x=32
	CurseSeal3_TTL
		icon = 'Curse Form TTL.dmi'
		pixel_y=32
		pixel_x=-32
	CurseSeal3_TTR
		icon = 'Curse Form TTR.dmi'
		pixel_y=32
		pixel_x=32

/*----------------------------------------------------------------*/

					//Kage Suits and Hats\\

/*----------------------------------------------------------------*/

obj
	KageSuitHo
		name = "Hokage suit"
		icon = 'KageSuit Ho.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KageSuit Ho.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KageSuit Ho.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Hokage."
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	KageHatHo
		name = "Hokage Hat"
		icon = 'KageHat Ho.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KageHat Ho.dmi'
					usr.verbs -= new /mob/Hokage/verb/Rebirth()
					usr.verbs -= new /mob/Reaper/verb/Reaper()
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KageHat Ho.dmi'
					usr.verbs += new /mob/Hokage/verb/Rebirth()
					usr.verbs += new /mob/Reaper/verb/Reaper()
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Hokage."
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	KageSuitAme
		name = "Amekage Suit"
		icon = 'KageSuit Ame.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KageSuit Ame.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KageSuit Ame.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Amekage."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	KageHatAme
		name = "Amekage Hat"
		icon = 'KageHat Ame.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KageHat Ame.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KageHat Ame.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Amekage."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	KageSuitKaze
		name = "Kazekage suit"
		icon = 'KageSuit Kaze.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KageSuit Kaze.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KageSuit Kaze.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Kazekage."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	KageHatKaze
		name = "Kazekage Hat"
		icon = 'KageHat Kaze.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KageHat Kaze.dmi'
					usr.verbs -= new /mob/KazeK/verb/Iron
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KageHat Kaze.dmi'
					usr.verbs += new /mob/KazeK/verb/Iron
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Kazekage."
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
	KageSuitMizu
		name = "Mizukage Suit"
		icon = 'KageSuit Mizu.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KageSuit Mizu.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KageSuit Mizu.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Mizukage."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	KageHatMizu
		name = "Mizukage Hat"
		icon = 'KageHat Mizu.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KageHat Mizu.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KageHat Mizu.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Mizukage."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	KageSuitOto
		name = "Otokage suit"
		icon = 'KageSuit Oto.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KageSuit Oto.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KageSuit Oto.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Otokage."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	KageHatOto
		name = "Otokage Hat"
		icon = 'KageHat Oto.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KageHat Oto.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KageHat Oto.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Otokage."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	KageSuitRai
		name = "Raikage Suit"
		icon = 'KageSuit Rai.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KageSuit Rai.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KageSuit Rai.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Raikage."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	KageHatRai
		name = "Raikage Hat"
		icon = 'KageHat Rai.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KageHat Rai.dmi'
					usr.verbs -= new /mob/Raikage/verb/Liger()
					usr.verbs -= new /mob/Lariant/verb/Lariant()
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KageHat Rai.dmi'
					usr.verbs += new /mob/Raikage/verb/Liger()
					usr.verbs += new /mob/Lariant/verb/Lariant()
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Raikage."
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	KageSuitTaiyou
		name = "Taiyoukage suit"
		icon = 'KageSuit Taiyou.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KageSuit Taiyou.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KageSuit Taiyou.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Taiyoukage."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	KageHatTaiyou
		name = "Taiyoukage Hat"
		icon = 'KageHat Taiyou.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KageHat Taiyou.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KageHat Taiyou.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Taiyoukage."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	KageSuitTsuchi
		name = "Tsuchikage Suit"
		icon = 'KageSuit Tsuchi.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KageSuit Tsuchi.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KageSuit Tsuchi.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Tsuchikage."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	KageHatTsuchi
		name = "Tsuchikage Hat"
		icon = 'KageHat Tsuchi.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KageHat Tsuchi.dmi'
					usr.verbs -= new /mob/RockW/verb/RockW()
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KageHat Tsuchi.dmi'
					usr.verbs += new /mob/RockW/verb/RockW()
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Tsuchikage."
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	KageSuitYami
		name = "Yamikage Suit"
		icon = 'KageSuit Yami.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KageSuit Yami.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KageSuit Yami.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Yamikage."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	KageHatYami
		name = "Yamikage Hat"
		icon = 'KageHat Yami.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KageHat Yami.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KageHat Yami.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Yamikage."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	KageSuitHoshi
		name = "Hoshikage Suit"
		icon = 'KageSuit Hoshi.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KageSuit Hoshi.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KageSuit Hoshi.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Hoshikage."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	KageHatHoshi
		name = "Hoshikage Hat"
		icon = 'KageHat Hoshi.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'KageHat Hoshi.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'KageHat Hoshi.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to the Hoshikage."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

/*----------------------------------------------------------------*/

						//Jounin Suits\\

/*----------------------------------------------------------------*/


	JouninCloudSuit
		name = "Cloud Jounin Suit"
		icon = 'JouninSuit Cloud.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'JouninSuit Cloud.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'JouninSuit Cloud.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to Jounins."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	JouninGrassSuit
		name = "Grass Jounin Suit"
		icon = 'JouninSuit Grass.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'JouninSuit Grass.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'JouninSuit Grass.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to Jounins."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	JouninLeafSuit
		name = "Leaf Jounin Suit"
		icon = 'JouninSuit Leaf.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'JouninSuit Leaf.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'JouninSuit Leaf.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to Jounins."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	JouninMistSuit
		name = "Mist Jounin Suit"
		icon = 'JouninSuit Mist.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'JouninSuit Mist.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'JouninSuit Mist.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to Jounins."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	JouninRainSuit
		name = "Rain Jounin Suit"
		icon = 'JouninSuit Rain.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'JouninSuit Rain.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'JouninSuit Rain.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to Jounins."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	JouninRockSuit
		name = "Rock Jounin Suit"
		icon = 'JouninSuit Rock.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'JouninSuit Rock.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'JouninSuit Rock.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to Jounins."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	JouninSandSuit
		name = "Sand Jounin Suit"
		icon = 'JouninSuit Sand.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'JouninSuit Sand.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'JouninSuit Sand.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to Jounins."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	JouninSnowSuit
		name = "Snow Jounin Suit"
		icon = 'JouninSuit Snow.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'JouninSuit Snow.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'JouninSuit Snow.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to Jounins."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	JouninSoundSuit
		name = "Sound Jounin Suit"
		icon = 'JouninSuit Sound.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'JouninSuit Sound.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'JouninSuit Sound.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to Jounins."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	JouninWaterfallSuit
		name = "Waterfall Jounin Suit"
		icon = 'JouninSuit Waterfall.dmi'
		worn = 0
		price = 2000
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'JouninSuit Waterfall.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'JouninSuit Waterfall.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a official suit given to Jounins."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"
obj
	Custom
		name = "Custom"
		icon = 'Custom.dmi'
		worn = 0
		Click()
			if(clicked)return
			if(!clicked)
				var/arg = input("")as icon
				icon = arg
				var/CN = input("","Name the Object") as text
				name = CN
				clicked = 1
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= icon
					usr << "You remove [src.name]"
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += icon
					usr << "You wear [src.name]"
					src.suffix = "Equipped"
			Look()
				usr<<"This suit created by an owner"
			Drop()
				if(src:worn)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a custom icon"

/*-------------------------------------------------------------*/

	Sais_Suit
		name = "Sai's Suit"
		icon = 'Sais Suit.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Sais Suit.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Sais Suit.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This suit is worn by Sai."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	Sais_Scroll
		name = "Sai's Scroll"
		icon = 'Sais Scroll.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Sais Scroll.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Sais Scroll.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This scroll is used by Sai."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"


	Sais_Sword
		name = "Sai's Sword"
		icon = 'Sais Sword.dmi'
		worn = 0
		price = 25000
		verb
			Wear()
				if(src.worn)
					src:worn = 0
					usr.overlays -= 'Sais Sword.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
					usr.tai = usr.Mtai
					usr.swordD = 0
				else
					src:worn = 1
					usr.overlays += 'Sais Sword.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
					usr.tai += 1000
					usr.swordD = usr.cap*1.2
			Look()
				usr<<"This is the sword that Sai uses."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	TobiM
		name = "Tobi Mask"
		icon = 'TobiMask.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'TobiMask.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'TobiMask.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is A Peculiar looking Mask."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"

	KisameS
		name = "Kisame Skin"
		icon = 'Kisame.dmi'
		worn = 0
		verb
			Wear()
				if(src.worn == 1)
					src:worn = 0
					usr.overlays -= 'Kisame.dmi'
					usr << "You remove the [src.name]."
					src.suffix = ""
				else
					src:worn = 1
					usr.overlays += 'Kisame.dmi'
					usr << "You wear the [src.name]."
					src.suffix = "Equipped"
			Look()
				usr<<"This is a tough shark skin made from Kisame."
			Drop()
				if(src:worn == 1)
					usr << "Not while its being worn."
				if(src:worn == 0)
					src.loc=locate(usr.x,usr.y-1,usr.z)
					usr.SaveK()
			Get()
				set src in oview(1)
				src.loc = usr
				usr<<"You picked up a [src]"



