
/*----------------------------------------------------------------*/

						//FlashStep\\

/*----------------------------------------------------------------*/
mob/var/tmp
	YT = 0

mob/FlashStep/verb
	FlashStep()
		set category = "Hidden Jutsus"
		set name = "FlashStep"
		if(usr.YT)
			usr.YT = 0
			usr << "You disable the ability to Flash Step"
		else
			usr.YT = 1
			usr << "You enable the ability to Flash Step"

/*----------------------------------------------------------------*/

						//Protection Sphere\\

/*----------------------------------------------------------------*/
obj
	ProtectionSphere
		icon = 'Hidden Jutsus.dmi'
		icon_state = "Protection Sphere"
		layer = MOB_LAYER+2

mob/Protection_Sphere
	verb
		Protection_Sphere()
			set category = "Hidden Jutsus"
			set name = "Protection Sphere"
			if(!usr.sphere)
				usr.overlays += /obj/ProtectionSphere
				usr.sphere =1
				usr.Kaiten =1
				usr.counter =1
				usr<<"<font color = lime>Protection Sphere On"
			else
				usr.overlays -= /obj/ProtectionSphere
				usr.counter =0
				usr.sphere =0
				usr.Kaiten =0
				usr<<"<font color = lime>Protection Sphere Off"

/*----------------------------------------------------------------*/

						//Blazing Hell\\

/*----------------------------------------------------------------*/

obj
	BlazingHellCenter
		icon='Hidden Jutsus.dmi'
		icon_state = "Middle"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	BlazingHellNorthWest
		icon='Hidden Jutsus.dmi'
		icon_state = "NorthWest"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	BlazingHellNorthEast
		icon='Hidden Jutsus.dmi'
		icon_state = "NorthEast"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	BlazingHellSouthWest
		icon='Hidden Jutsus.dmi'
		icon_state = "SouthWest"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	BlazingHellSouthEast
		icon='Hidden Jutsus.dmi'
		icon_state = "SouthEast"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	BlazingHellNorth
		icon='Hidden Jutsus.dmi'
		icon_state = "NNorth"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	BlazingHellSouth
		icon='Hidden Jutsus.dmi'
		icon_state = "SSouth"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	BlazingHellEast
		icon='Hidden Jutsus.dmi'
		icon_state = "EEast"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	BlazingHellWest
		icon='Hidden Jutsus.dmi'
		icon_state = "WWest"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	BlazingHellNorthTail
		icon='Hidden Jutsus.dmi'
		icon_state = "NorthTail"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	BlazingHellSouthTail
		icon='Hidden Jutsus.dmi'
		icon_state = "SouthTail"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	BlazingHellEastTail
		icon='Hidden Jutsus.dmi'
		icon_state = "EastTail"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

	BlazingHellWestTail
		icon='Hidden Jutsus.dmi'
		icon_state = "WestTail"
		layer = MOB_LAYER+2
		New()
			..()
			spawn(34)
			del(src)

mob/Blazing_Hell
	verb
		Blazing_Hell() // Verb used for firing the beam
			set category = "Hidden Jutsus"
			set name = "Blazing Hell"
			if(!usr.GM) // If the mob's firing var is one...
				return
			else // If the firing var isn't 1...
				if(usr.Katon1N >= 0)
					var/obj/BlazingHellSouth/S = new /obj/BlazingHellSouth
					var/obj/BlazingHellCenter/C = new /obj/BlazingHellCenter
					var/obj/BlazingHellNorth/N = new /obj/BlazingHellNorth
					var/obj/BlazingHellEast/E = new /obj/BlazingHellEast
					var/obj/BlazingHellWest/W = new /obj/BlazingHellWest
					var/obj/BlazingHellNorthEast/NE = new /obj/BlazingHellNorthEast
					var/obj/BlazingHellSouthEast/SE = new /obj/BlazingHellSouthEast
					var/obj/BlazingHellNorthWest/NW = new /obj/BlazingHellNorthWest
					var/obj/BlazingHellSouthWest/SW = new /obj/BlazingHellSouthWest
					var/obj/BlazingHellSouthTail/ST = new /obj/BlazingHellSouthTail
					var/obj/BlazingHellNorthTail/NT = new /obj/BlazingHellNorthTail
					var/obj/BlazingHellEastTail/ET = new /obj/BlazingHellEastTail
					var/obj/BlazingHellWestTail/WT = new /obj/BlazingHellWestTail
					usr.Katon1N += 1
					view()<<"[usr] Says:<font color=#3d424d>B</font><font color=#4d4547>l</font><font color=#5d4741>a</font><font color=#6c4a3b>z</font><font color=#7c4d35>i</font><font color=#8c4f2f>n</font><font color=#9c5229>g</font> <font color=#bb571d>H</font><font color=#cb5a17>e</font><font color=#db5d11>l</font><font color=#ea5f0b>l</font>"
					N.Gowner=usr
					N.nin=usr.nin
					if(N)
						N.loc = usr.loc
						N.y+=1
					if(C)
						C.loc = usr.loc
						C.y+=0
					if(S)
						S.loc = usr.loc
						S.y+=-1
					if(W)
						W.loc = usr.loc
						W.y+=0
						W.x-=1
					if(E)
						E.loc = usr.loc
						E.y+=0
						E.x+=1
					if(NE)
						NE.loc = usr.loc
						NE.y+=1
						NE.x+=1
					if(NW)
						NW.loc = usr.loc
						NW.y+=1
						NW.x+=-1
					if(SE)
						SE.loc = usr.loc
						SE.y+=-1
						SE.x+=1
					if(SW)
						SW.loc = usr.loc
						SW.y+=-1
						SW.x+=-1
					if(NT)
						NT.loc = usr.loc
						NT.y+=2
					if(ST)
						ST.loc = usr.loc
						ST.y+=-2
					if(ET)
						ET.loc = usr.loc
						ET.y+=0
						ET.x+=2
					if(WT)
						WT.loc = usr.loc
						WT.y+=0
						WT.x+=-2
					for(var/mob/M in oview(4,usr))
						if(S)
							if(M.loc==S.loc)
								var/damage=usr.nin*100000000
								view()<<"[M] has taken [damage] Damage from [usr]'s Blazing Hell"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(C)
							if(M.loc==C.loc)
								var/damage=usr.nin*100000000
								view()<<"[M] has taken [damage] Damage from [usr]'s Blazing Hell"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(N)
							if(M.loc==N.loc)
								var/damage=usr.nin*100000000
								view()<<"[M] has taken [damage] Damage from [usr]'s Blazing Hell"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(E)
							if(M.loc==E.loc)
								var/damage=usr.nin*100000000
								view()<<"[M] has taken [damage] Damage from [usr]'s Blazing Hell"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(W)
							if(M.loc==W.loc)
								var/damage=usr.nin*100000000
								view()<<"[M] has taken [damage] Damage from [usr]'s Blazing Hell"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(SW)
							if(M.loc==SW.loc)
								var/damage=usr.nin*100000000
								view()<<"[M] has taken [damage] Damage from [usr]'s Blazing Hell"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(SE)
							if(M.loc==SE.loc)
								var/damage=usr.nin*100000000
								view()<<"[M] has taken [damage] Damage from [usr]'s Blazing Hell"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(NE)
							if(M.loc==NE.loc)
								var/damage=usr.nin*100000000
								view()<<"[M] has taken [damage] Damage from [usr]'s Blazing Hell"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(NW)
							if(M.loc==NW.loc)
								var/damage=usr.nin*100000000
								view()<<"[M] has taken [damage] Damage from [usr]'s Blazing Hell"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(NT)
							if(M.loc==NT.loc)
								var/damage=usr.nin*100000000
								view()<<"[M] has taken [damage] Damage from [usr]'s Blazing Hell"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(ST)
							if(M.loc==ST.loc)
								var/damage=usr.nin*100000000
								view()<<"[M] has taken [damage] Damage from [usr]'s Blazing Hell"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(ET)
							if(M.loc==ET.loc)
								var/damage=usr.nin*100000000
								view()<<"[M] has taken [damage] Damage from [usr]'s Blazing Hell"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					for(var/mob/M in oview(4,usr))
						if(WT)
							if(M.loc==WT.loc)
								var/damage=usr.nin*100000000
								view()<<"[M] has taken [damage] Damage from [usr]'s Blazing Hell"
								M.health-=damage
								if(M.health<=0)
									M.Death(usr)
					sleep(60)
					del(S)

/*----------------------------------------------------------------*/

						//Shadow Illusion\\

/*----------------------------------------------------------------*/
/*
mob/Shadow_Illusion
	verb
		Shadow_Illusion()
			set name = "Shadow Illusion"
			set category = "Hidden Jutsus"
			var/list/O = usr.overlays.Copy()
			if(usr.invisibility==0)
				view()<<"<font color=silver><b><font face=verdana>[usr]: Shadow Illusion!!"
				usr.icon = 'Hidden Jutsus.dmi'
				usr.icon_state = "Invisible"
				usr.firing=1
				usr.overlays = usr.overlays.Remove(usr.overlays)
				usr.invisibility=1
			else
				usr.invisibility = 0
				usr.overlays = O.Copy()
				usr.icon = usr.Oicon
				usr.firing = 0
*/
/*----------------------------------------------------------------*/

						//???\\

/*----------------------------------------------------------------*/

mob/Shadow_Illusion
	verb
		Shadow_Illusion()
			set name = "Shadow Illusion"
			set category = "Hidden Jutsus"
			if(usr.chakra <= 50)
				usr<<"You dont have enough chakra!"
				return
			if(usr.firing)
				usr<<"Not now."
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
			if(usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.caught)
				usr<<"Your captured"
				return
			if(usr.captured)
				usr<<"Your captured"
				return
			if(!usr.SHarmor&&!usr.firing)
				view()<<"<font color = red>[usr]: Shadow Illusion!"
				usr.overlays += 'Hidden Jutsus.dmi'
				usr.icon_state = "Invisible"
				usr.SHarmor =1
				usr.nin = usr.nin*2
				fire
				if(usr.SHarmor)
					usr.chakra -=50
					if(usr.chakra <= 4)
						usr.overlays -= 'Hidden Jutsus.dmi'
						usr.icon_state = "Invisible"
						usr.SHarmor = 0
						usr.nin = usr.Mnin
						return
					else
						sleep(4)
						goto fire
			else if(usr.SHarmor)
				usr.overlays -= 'Hidden Jutsus.dmi'
				usr.icon_state = "Invisible"
				usr.SHarmor =0
				usr.nin = usr.Mnin
				usr<<"You take down the Shadow Illusion."

/*------------------------------------------*/
/*
		usr.verbs += /mob/Protection_Sphere/verb/Protection_Sphere
		usr.verbs += /mob/Shadow_Illusion/verb/Shadow_Illusion
		usr.verbs += /mob/Blazing_Hell/verb/Blazing_Hell
		usr.verbs += /mob/Marluxia/verb/
		usr.verbs += /mob/Saix/verb/
		usr.verbs += /mob/Lexaeus/verb/
		usr.verbs += /mob/Xaldin/verb/
		usr.verbs += /mob/Vexen/verb/
		usr.verbs += /mob/Xigbar/verb/
		usr.verbs += /mob/Roxas/verb/
		usr.verbs += /mob/Luxord/verb/
		usr.verbs += /mob/Larxene/verb/
		usr.verbs += /mob/Demyx/verb/
*/
/*-------------------------------------------*/



