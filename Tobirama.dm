mob/var/Goshun

mob/Tobirama
	verb/Switch(mob/M in world)
		set name = "Switch"
		set category = "NinJutsu"
		if(M.Goshun == "[usr]"&&usr.Goshun == "[M]")
			var/Loc1 = usr.loc
			var/Loc2 = M.loc
			usr.loc = Loc2;M.loc = Loc1

mob/Tobirama
	verb/Goshun(mob/M in oview())
		set name = "Goshun Mawashi No Jutsu"
		set category = "NinJutsu"
		usr.Handseals()
		usr.Summoneffect()
		view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <font color='#a4ae00'>G</font><font color='#acb500'>o</font><font color='#b5bb00'>s</font><font color='#bdc200'>h</font><font color='#c5c900'>u</font><font color='#cdd000'>n</font><font color='#d6d600'> </font><font color='#dedd00'>M</font><font color='#e6e400'>a</font><font color='#eeeb00'>w</font><font color='#f7f100'>a</font><font color='#fff800'>s</font><font color='#f9f100'>h</font><font color='#f4ea00'>i</font><font color='#eee300'> </font><font color='#e8dc00'>N</font><font color='#e3d500'>o</font><font color='#ddcd00'> </font><font color='#d8c600'>J</font><font color='#d2bf00'>u</font><font color='#ccb800'>t</font><font color='#c7b100'>s</font><font color='#c1aa00'>u</font>"
		M.Goshun = "[usr]"
		usr.Goshun = "[M]"


obj
	tdragonb
		density=1
		icon='WaterDragon.dmi'
		icon_state="tail"
		New()
			..()
			spawn()
				src.delete()
		proc/delete()
			spawn(15)
				del(src)
obj
	tdragona
		density=1
		icon='WaterDragon.dmi'
		icon_state="head"
		Move()
			..()
			var/obj/tdragonb/T = new /obj/tdragonb
			if(src.dir == NORTH)
				T.loc = src.loc
				T.y = src.y-1
				T.dir = src.dir
			if(src.dir == SOUTH)
				T.loc = src.loc
				T.y = src.y+1
				T.dir = src.dir
			if(src.dir == WEST)
				T.loc = src.loc
				T.x = src.x+1
				T.dir = src.dir
			if(src.dir == EAST)
				T.loc = src.loc
				T.x = src.x-1
				T.dir = src.dir
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					usr<<"They copy and reflect it back at you."
					M<<"You copy and reflect it back at them."
					usr.health -= M.Mnin/5
					del(src)
					return
				if(!M.PK)
					return
				var/damage = round(src.nin*1.55)
				if(damage >= 1)
					M.health -= damage
					view(M) << "[M] was hit by Suiton Suiryuudan no Jutsu for [damage] damage!!"
					var/mob/O = src.Gowner
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/Tobirama
	verb
		Slash()
			set category = "NinJutsu"
			set name = "Hiraishingiri"
			if(!usr.PK)
				usr<<"<font size = -1><font size = -1><B>Something stops you from attacking [usr]"
				return
			if(usr.Froze||usr.Frozen)
				usr<<"Your Frozen"
				return
			if(usr.caught||usr.captured)
				usr<<"Your captured"
				return
			if(usr.resting||usr.meditating)
				usr<<"Not while resting/meditating"
				return
			if(usr.firing)
				return
			if(usr.chakra<=25000)
				usr<<"You don't have enough chakra!!"
				return
			else
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <font color='#8a9200'>H</font><font color='#93a004'>i</font><font color='#9dae09'>r</font><font color='#a6bc0d'>a</font><font color='#afca12'>i</font><font color='#b8d816'>s</font><font color='#c2e61b'>h</font><font color='#cbf41f'>i</font><font color='#ceec1c'>n</font><font color='#d1e419'>g</font><font color='#d4dc15'>i</font><font color='#d7d512'>r</font><font color='#dacd0f'>i</font><font color='#ddc50c'>!</font>"
				usr.chakra -= 25000
				usr.firing=1
				if(usr.dir==NORTH)
					for(var/mob/M in oview(5))
						if(get_dir(src, M) == src.dir)
							var/damage = usr.nin*1.65
							var/list/O = list()
							O += M
							M.health -= damage
							usr<<"[usr] delivers a swift, devastating slash at [O] for [damage] damage"
					usr.loc=locate(usr.x,usr.y+1,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y+2,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y+3,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y+4,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y+5,usr.z)
					sleep(1)
				if(usr.dir==SOUTH)
					for(var/mob/M in oview(5))
						if(get_dir(src, M) == src.dir)
							var/damage = usr.nin*1.65
							var/list/O = list()
							O += M
							M.health -= damage
							usr<<"[usr] delivers a swift, devastating slash at [O] for [damage] damage"
					usr.loc=locate(usr.x,usr.y-1,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y-2,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y-3,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y-4,usr.z)
					sleep(1)
					usr.loc=locate(usr.x,usr.y-5,usr.z)
					sleep(1)
				if(usr.dir==EAST)
					for(var/mob/M in oview(5))
						if(get_dir(src, M) == src.dir)
							var/damage = usr.nin*1.65
							var/list/O = list()
							O += M
							M.health -= damage
							usr<<"[usr] delivers a swift, devastating slash at [O] for [damage] damage"
					usr.loc=locate(usr.x+1,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x+2,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x+3,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x+4,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x+5,usr.y,usr.z)
					sleep(1)
				if(usr.dir==WEST)
					for(var/mob/M in oview(5))
						if(get_dir(src, M) == src.dir)
							var/damage = usr.nin*1.65
							var/list/O = list()
							O += M
							M.health -= damage
							usr<<"[usr] delivers a swift, devastating slash at [O] for [damage] damage"
					usr.loc=locate(usr.x-1,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x-2,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x-3,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x-4,usr.y,usr.z)
					sleep(1)
					usr.loc=locate(usr.x-5,usr.y,usr.z)
					sleep(1)
				sleep(14)
				usr.firing=0

mob/Tobirama
	verb
		WaterDragon()
			set category = "NinJutsu"
			set name = "Suiton Suiryuudan no Jutsu"
			usr.Handseals()
			if(usr.firing)
				return
			if(usr.PK==0)
				usr<<"NON PK ZONE!"
				return
			if(!usr.handseals)
				return
			if(usr.intank)
				return
			if(usr.chakra <= 500)
				return
			if(usr.Froze)
				usr<<"Your Frozen"
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
			if(usr.resting)
				usr<<"Not while resting"
				return
			if(usr.meditating)
				usr<<"Not while meditating"
				return
			else
				usr.firing=1
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <font color='#6f78fd'>S</font><font color='#6670fd'>u</font><font color='#5e68fd'>i</font><font color='#5560fd'>t</font><font color='#4d59fe'>o</font><font color='#4451fe'>n</font><font color='#3c49fe'> </font><font color='#3341fe'>S</font><font color='#2b39fe'>u</font><font color='#2231fe'>i</font><font color='#1a2aff'>r</font><font color='#1122ff'>y</font><font color='#091aff'>u</font><font color='#0012ff'>u</font><font color='#0011f6'>d</font><font color='#0011ed'>a</font><font color='#0010e3'>n</font><font color='#000fda'> </font><font color='#000fd1'>N</font><font color='#000ec8'>o</font><font color='#000dbe'> </font><font color='#000db5'>J</font><font color='#000cac'>u</font><font color='#000ba3'>t</font><font color='#000b99'>s</font><font color='#000a90'>u</font>"
				usr.chakra -= 500
				var/obj/tdragona/B = new /obj/tdragona
				B.Gowner=usr
				B.nin = usr.nin
				B.loc = usr.loc
				B.Move_Delay=0
				usr.Chakragain()
				walk(B,usr.dir)
				sleep(10)
				usr.firing=0
				sleep(15)
				del(B)



obj/proc
	Push()
		for(var/mob/M in get_step(src,src.dir))
			step(M,src.dir,"Speed=0")
			view() << "[src]'s Water Formation shoves [M]"
			return

obj
	waterwall
		icon = 'Waterfal.dmi'
		icon_state = ""
		density = 1
		Move()
			..()
			var/obj/WTrail/T = new /obj/WTrail
			if(src.dir == NORTH)
				T.loc = src.loc
				T.y = src.y-1
				T.dir = src.dir
			if(src.dir == SOUTH)
				T.loc = src.loc
				T.y = src.y+1
				T.dir = src.dir
			if(src.dir == WEST)
				T.loc = src.loc
				T.x = src.x+1
				T.dir = src.dir
			if(src.dir == EAST)
				T.loc = src.loc
				T.x = src.x-1
				T.dir = src.dir
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				var/mob/O = src.Gowner
				if(M.Kaiten||M.sphere||!M.PK||M == 0)
					return
				if(M.counter)
					O<<"They copy and reflect it back at you."
					M<<"You copy and reflect it back at them."
					O.health -= M.Mnin/5
					del(src)
					return
				else
					src.Push()
			if(istype(A,/turf/))
				return
			if(istype(A,/obj/))
				del(A)
				return

turf/Entered(O)
	for(var/obj/WTrail/Obj in src.contents)
		Obj.Trigger(O)
	..()

obj/WTrail
	icon = 'Waterfal.dmi'
	icon_state = ""
	New()
		spawn(100)
			del src
	proc/Trigger(mob/M)
		if(istype(M,/obj/))
			del(M)
		else
			if(M)
				src.Push()

mob/Tobirama
	verb
		Waterfall()
			set category = "NinJutsu"
			set name = "Suiton Suijinheki"
			usr.Handseals()
			if(usr.firing||!usr.handseals||usr.intank)
				return
			if(!usr.PK)
				usr<<"NON PK ZONE!"
				return
			if(usr.chakra <= 500)
				return
			if(usr.Froze||usr.Frozen||usr.caught||usr.captured)
				usr<<"You're unable to move!"
				return
			if(usr.resting||usr.meditating)
				usr<<"Not while resting/meditating"
				return
			else
				if(usr.dir==NORTHWEST||usr.dir==SOUTHWEST||usr.dir==NORTHEAST||usr.dir==SOUTHEAST)
					return
				usr.firing=1
				usr.chakra -= 500
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <font color='#1200ae'>S</font><font color='#1002b8'>u</font><font color='#0e05c2'>i</font><font color='#0b07cc'>t</font><font color='#0909d7'>o</font><font color='#070be1'>n</font><font color='#050eeb'> </font><font color='#0210f5'>S</font><font color='#0012ff'>u</font><font color='#001ef7'>i</font><font color='#002bf0'>j</font><font color='#0037e8'>i</font><font color='#0043e0'>n</font><font color='#004fd8'>h</font><font color='#005cd1'>e</font><font color='#0068c9'>k</font><font color='#0074c1'>i</font>"
				var/obj/waterwall/D = new /obj/waterwall
				var/obj/waterwall/K = new /obj/waterwall
				var/obj/waterwall/L = new /obj/waterwall
				var/obj/waterwall/F = new /obj/waterwall
				var/obj/waterwall/M = new /obj/waterwall
				usr.Chakragain()
				if(K)
					K.loc = usr.loc
					K.nin=usr.nin
					K.name="[usr]"
					K.Move_Delay=1.4
					K.Gowner=usr
					walk(K,usr.dir)
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
				if(F)
					F.loc = usr.loc
					if(usr.dir==NORTH)
						F.x-=2
					if(usr.dir==SOUTH)
						F.x+=2
					if(usr.dir==WEST)
						F.y+=2
					if(usr.dir==EAST)
						F.y-=2
					F.nin=usr.nin
					F.name="[usr]"
					F.Move_Delay=1.4
					F.Gowner=usr
					walk(F,usr.dir)
				if(M)
					M.loc = usr.loc
					if(usr.dir==NORTH)
						M.x+=2
					if(usr.dir==SOUTH)
						M.x-=2
					if(usr.dir==WEST)
						M.y-=2
					if(usr.dir==EAST)
						M.y+=2
					M.Move_Delay=1.4
					M.nin=usr.nin
					M.name="[usr]"
					M.Gowner=usr
					walk(M,usr.dir)
				sleep(10)
				usr.Frozen=0
				sleep(40)
				del(D)
				del(K)
				del(L)
				del(F)
				del(M)
				usr.firing=0



mob/Tobirama
	verb
		Wave()
			set category = "NinJutsu"
			set name = "Suiton Suidanha"
			usr.Handseals()
			if(usr.firing||usr.Kaiten||!usr.handseals)
				return
			if(!usr.PK)
				usr<<"NON PK ZONE!"
				return
			if(usr.Frozen||usr.Froze)
				usr<<"Your Frozen"
				return
			if(usr.captured||usr.caught)
				usr<<"Your captured"
				return
			if(usr.chakra <= 500)
				usr<<"You dont have enough chakra!"
				return
			if(usr.resting||usr.meditating)
				usr<<"Not while resting/meditating"
				return
			else
				usr.firing=1
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <font color='#447294'>S</font><font color='#487596'>u</font><font color='#4c7898'>i</font><font color='#507b9a'>t</font><font color='#547e9c'>o</font><font color='#57809d'>n</font><font color='#5b839f'> </font><font color='#5f86a1'>S</font><font color='#6389a3'>u</font><font color='#698ea6'>i</font><font color='#6e93a9'>d</font><font color='#7498ac'>a</font><font color='#799daf'>n</font><font color='#7fa2b2'>h</font><font color='#84a7b5'>a</font><font color='#8aacb8'>!</font>"
				usr.chakra -= 500
				var/obj/Wave1/B = new /obj/Wave1
				B.Gowner=usr
				B.nin = usr.nin
				B.loc = usr.loc
				B.Move_Delay=0
				usr.Chakragain()
				walk(B,usr.dir)
				sleep(10)
				usr.firing=0
				sleep(15)
				del(B)

obj
	Wave1
		density = 1
		icon = 'wave.dmi'
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				var/mob/O = src.Gowner
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					usr<<"They copy and reflect it back at you."
					M<<"You copy and reflect it back at them."
					usr.health -= M.Mnin/5
					del(src)
					return
				if(!M.PK)
					return
				var/damage = O.nin*1.5
				if(damage > 0)
					M.health -= damage
					view(M) << "[M] was hit by severing waves for [damage] damage!"
					M.Death(O)
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/var
	whip = ""


obj
	suitonb
		density=1
		icon='whip.dmi'
		icon_state=""
		New()
			..()
			spawn()
				src.delete()
		proc/delete()
			spawn(15)
				del(src)
obj
	suitona
		density=1
		icon='whip.dmi'
		icon_state=""
		Move()
			..()
			var/obj/suitonb/T = new /obj/suitonb
			if(src.dir == NORTH)
				T.loc = src.loc
				T.y = src.y-1
				T.dir = src.dir
			if(src.dir == SOUTH)
				T.loc = src.loc
				T.y = src.y+1
				T.dir = src.dir
			if(src.dir == WEST)
				T.loc = src.loc
				T.x = src.x+1
				T.dir = src.dir
			if(src.dir == EAST)
				T.loc = src.loc
				T.x = src.x-1
				T.dir = src.dir
		Bump(A)
			if(ismob(A))
				var/mob/M = A
				var/mob/O = src.Gowner
				if(M.Kaiten||M.sphere)
					return
				if(M.counter)
					usr<<"They copy and reflect it back at you."
					M<<"You copy and reflect it back at them."
					usr.health -= M.Mnin/5
					del(src)
					return
				if(!M.PK)
					return
				M.Frozen = 1
				M.whip = "[O]"
				M.overlays += 'whip catch.dmi'
				M<<"You are caught by the water whip!"
				O<<"[M] is caught by the water whip!"
				del(src)
			if(istype(A,/turf/))
				var/turf/T = A
				if(T.density)
					del(src)
			if(istype(A,/obj/))
				del(src)
mob/Tobirama
	verb
		Whip()
			set category = "NinJutsu"
			set name = "Suiton Suiben"
			usr.Handseals()
			if(usr.firing||usr.Kaiten||!usr.handseals)
				return
			if(!usr.PK)
				usr<<"NON PK ZONE!"
				return
			if(usr.Frozen||usr.Froze)
				usr<<"Your Frozen"
				return
			if(usr.captured||usr.caught)
				usr<<"Your captured"
				return
			if(usr.chakra <= 25)
				usr<<"You dont have enough chakra!"
				return
			if(usr.resting||usr.meditating)
				usr<<"Not while resting/meditating"
				return
			else
				usr.firing=1
				view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <font color='#3a6f87'>S</font><font color='#3f7892'>u</font><font color='#44819c'>i</font><font color='#498aa7'>t</font><font color='#5095b3'>o</font><font color='#569fbf'>n</font><font color='#5ca8ca'> </font><font color='#61b1d4'>S</font><font color='#67badf'>u</font><font color='#69c1e9'>i</font><font color='#6ac7f2'>b</font><font color='#7acff6'>e</font><font color='#8bd8fb'>n</font><font color='#9be0ff'>!</font>"
				usr.chakra -= 500
				var/obj/suitona/B = new /obj/suitona
				B.Gowner=usr
				B.nin = usr.nin
				B.loc = usr.loc
				B.Move_Delay=0
				usr.Chakragain()
				walk(B,usr.dir)
				sleep(10)
				usr.firing=0
				sleep(15)
				del(B)
				sleep(300)
				for(var/mob/M in world)
					if(M.whip == "[usr]")
						M.overlays -= 'whip catch.dmi'
						M.Frozen = 0
						M.whip = ""
						M<<"You were released from the water whip!"


mob/Tobirama
	verb
		SuitonSuishouha()
			set category = "NinJutsu"
			set name = "Suiton Suishouha"
			usr.Handseals()
			if(usr.firing||usr.Kaiten||!usr.handseals)
				return
			if(!usr.PK)
				usr<<"NON PK ZONE!"
				return
			if(usr.Frozen||usr.Froze)
				usr<<"Your Frozen"
				return
			if(usr.captured||usr.caught)
				usr<<"Your captured"
				return
			if(usr.chakra <= 25)
				usr<<"You dont have enough chakra!"
				return
			if(usr.resting||usr.meditating)
				usr<<"Not while resting/meditating"
				return
			else // If the firing var isn't 1...
				if(SN >= 100)
					usr.chakra -= 25
					usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
					usr.SN += 1
					view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>Suiton Suishouha!</FONT>"
					var/obj/Suishouha/K = new /obj/Suishouha
					K.loc = usr.loc
					K.nin=usr.nin
					K.dir = usr.dir
					K.name="[usr]"
					usr.Chakragain()
					K.Gowner=usr
					walk(K,usr.dir)
					if (target == null)
						del(K)
					if(usr.Mnin <= usr.cap)
						usr.random = rand(1,6)
						if(random == 5||random==1)
							usr.ninexp += rand(1,10)
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
						usr.random = rand(1,20)
						if(random == 5||random==1)
							var/ccrandom=rand(1,15)
							if(ccrandom==4||ccrandom==10)
								var/ccgain=rand(1,3)
								usr.ChakraC+=ccgain
								if(usr.ChakraC>100)
									usr.ChakraC=100
								usr<<"[usr] you gained [ccgain] Chakra control..."
					sleep(10)
					usr.firing = 0
					usr.Move_Delay = usr.Savedspeed
					sleep(45)
					del(K)
				else
					usr.random = rand (1,4)
					if(usr.random == 1||usr.random == 4)
						usr.chakra -= 25
						usr.firing = 1 // Sets the firing var to 1, so he cant fire another beam // Disables the mob's movement
						usr.SN += 1
						view()<<"<font size=1><font face=verdana><b><font color=white>[usr]<font color=green> Says: <FONT COLOR=#87ceeb>Suiton Suishouha!</FONT>"
						var/obj/Suishouha/K = new /obj/Suishouha
						K.loc = usr.loc
						K.nin=usr.nin
						K.dir = usr.dir
						K.name="[usr]"
						usr.Chakragain()
						K.Gowner=usr
						walk(K,usr.dir)
						if (target == null)
							del(K)
						if(usr.Mnin <= usr.cap)
							usr.random = rand(1,6)
							if(random == 5||random==1)
								usr.ninexp += rand(1,10)
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
							usr.random = rand(1,20)
							if(random == 5||random==1)
								var/ccrandom=rand(1,15)
								if(ccrandom==4||ccrandom==10)
									var/ccgain=rand(1,3)
									usr.ChakraC+=ccgain
									if(usr.ChakraC>100)
										usr.ChakraC=100
									usr<<"[usr] you gained [ccgain] Chakra control..."
						sleep(10)
						usr.firing = 0
						usr.Move_Delay = usr.Savedspeed
						sleep(45)
						del(K)