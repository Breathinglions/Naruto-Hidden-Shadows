mob
	New()//when a mob is created
		..()
		sleep(20)
		if(isnull(src.client))//if it's not human
			ai_random_wander()//wander
			return..()//continue on with normal New() (create and whatnot)
		else
			return..()

mob
	proc
		ShuriThrow()
			src.firing = 1
			var/obj/Shuriken/K = new /obj/Shuriken
			K.loc = src.loc
			K.tai=src.tai
			K.dir = src.dir
			K.name="[src]"
			K.Gowner=src
			walk(K,usr.dir)
			usr.firing = 0
			sleep(45)
			del(K)
mob
	proc
		KunaiThrow()
			src.firing = 1
			var/obj/Kunai/K = new /obj/Kunai
			K.loc = src.loc
			K.tai=src.tai
			K.dir = src.dir
			K.name="[src]"
			K.Gowner=src
			walk(K,usr.dir)
			usr.firing = 0
			sleep(45)
			del(K)

mob
	proc//core procs for the system
		ai_random_wander()//random wander if no mobs are in range to attack
			if(src.key)//if the source is human
				return//don't call the rest
			if(!src.Ichibi&&!src.Itachi&&!src.Sasori&&!src.DeidaraF&&!src.DosuKinuta&&!src.weaknin&&!src.orochimaru&&!src.kyuubinpc&&!src.guard&&!src.TayuyaE&&!src.Jiroubou&&!src.Kimimaro&&!src.Sakon&&!src.KidomaruE&&!src.hokage&&!src.Hidan&&!src.Kakuzu)
				return
			else
				walk_rand(src,10)//walk randomly with 5 lag
				src.ai_run_away()
				spawn(8)//delay for one tick
					ai_random_wander()//wander some more

		ai_run_away()//used for checking to see if it should run or attack
			if(src.client)
				return
			else
				for(var/mob/M in oview(10,src))//loops over all mobs within 5 tiles of the monster
					if(M.client)//if the mob is human
						if(get_dist(src,M) <= 7)//if the player is close
							if(src.weaknin||M.NPC)
								return
							if(src.guard)
								return
							else
								src:random = rand(1,5)
								if(src:random == 5)
									src.jutsu()
									src.ai_walk_to()
								else
									src.ai_walk_to()
						else
							src.jutsu()//calls the walk_to (for attacking) proc
					else
						return

		ai_walk_to()
			if(src.client)
				return 0
			else
				for(var/mob/M in oview(15,src))
					if(M.client)
						if(src.guard==1&&M.Village=="[src.Village]")
							return
						if(src.DosuKinuta)
							return
						if(get_dist(src,M) <= 15)//within 10 tiles
							walk_to(src,M)//walk to the player
							ai_check_dist(src,M)//checks distance
							//stops the loop
						else
							continue
					else
						continue

		ai_check_dist(mob/attacker,mob/defender)
			for(var/mob/M in oview(15,src))
				if(attacker.client)
					return
				else
					if(src.guard==1&&M.Village=="[src.Village]"||M.rank=="Student"||M.rank=="Genin")
						return
					if(get_dist(attacker,defender) <= 1 && defender.NPC==0)//if the monster is one tile away from the player
						attacker.MONATTACK(defender)//attack!
					else
						return



		jutsu()
			if(src.Itachi&&src.Frozen)
				view()<<"Itachi: Do you really think I can be captured and frozen so easily by such weak jutsu"
				src.Frozen=0
			if(src.Itachi&&src.health<=1250000)
				view()<<"<font color = blue><B> Susanoo!!"
				src.insas=1
				src.counter=1
				src.overlays+='Susanoo CC.dmi'
			if(src.Itachi&&src.health<=450000)
				view()<<"<font color = red><B>Izanagi!!"
				src.izanagi=1
				sleep(200)
				src.izanagi=0
				sleep(600)
			if(src.hokage&&src.health<=1000000)
				src.counter=1
				sleep(25)
				src.counter=0
			if(src.Kakuzu&&src.Frozen)
				view()<<"Kakuzu: Surely, you didn't think you can hold me in this weak ninjutsu"
				src.Frozen=0
				src.drunk=1
				sleep(60)
				src.drunk=0
			if(src.Kimimaro&&src.Frozen)
				view()<<"Kimimaro: Nothing can hold me back!! I WILL WIN FOR OROCHIMARU-SAMA!!"
				src.Frozen=0
				src.drunk=1
				sleep(60)
				src.drunk=0
			if(src.Hidan&&src.health <= 1000000)
				view()<<"<font color = red><B> Do you really think you can kill me, Asshole?!"
				src.firing=1
				src.health+= 1500000
				view()<<"Hidan prepares his ritual!!"
				src.overlays += 'JashinCircle.dmi'
				src.counter=1
				sleep(45)
				src.overlays -= 'JashinCircle.dmi'
				src.counter=0
				src.firing=0
			if(src.Hidan&&src.Frozen)
				view()<<"<font color = red><B>Is this all you got?!"
				src.Frozen=0
			if(src.TayuyaE&&src.Frozen)
				view()<<"You can't hold me back!!"
				src.Frozen=0
			if(src.hokage&&src.Frozen)
				view()<<"<font color = blue><B>Suiton Style: Wild Water Release!"
				src.firing=1
				sleep(15)
				view()<<"[src] is no longer frozen!!"
				src.Frozen=0
				src.firing=0
			if(src.hokage&&src.health<=500000)
				view()<<"<font color = blue><B>Shousen Jutsu!!"
				src.firing=1
				sleep(25)
				src.health+=1000000
				view()<<"<font color=blue> [src] heals himself for 1 million health!!"
				src.firing=0
			if(src.TayuyaE&&src.health<=450000)
				view()<<"<font color = blue><B>Song of Healing!!"
				src.firing=1
				src.health+=500000
				sleep(25)
				view()<<"<font color=blue> [src] heals himself for 500000 health!!"
				src.firing=0
			for(var/mob/M in oview(1))
				if(src.Itachi)
					var/damage=src.gen*1.2
					view()<<"<font color=red><B>Itachi: Tsukuyomi!!...I wonder how long your mind can last."
					M.Frozen=1
					sleep(60)
					M.health-=damage
					if(M.health<=0)
						M.Death(src)
					view()<<"[M] has taken [damage] damage from Itachi's Tsukuyomi!"
					M.Frozen=0
				if(src.Sasori&&src.health<=575000)
					view()<<"<font color=red>Sasori: Behold the power of Sasori of the Red Sand!!"
					var/damage=src.nin
					M.health-=damage
					if(M.health <=0)
						M.Death(src)
					view()<<"[M] is being slowly poisoned by Sasori's poison"
					sleep(60)
					M.health-=damage
					if(M.health <=0)
						M.Death(src)
					view()<<"[M] is being slowly poisoned by Sasori"
					sleep(60)
					M.health-=damage
					if(M.health <=0)
						M.Death(src)
					view()<<"[M] is being slowly poisoned by Sasori"
				if(src.hokage)
					view()<<"<font color = blue> Suiton Style: Ice Isolation!!"
					M.Frozen=1
					M.overlays += 'WaterStrom.dmi'
					var/damage=src.nin*1.2
					M.health-=damage
					if(M.health <= 0)
						M.Death(src)
					view()<<"[M] takes [damage] damage as they are trapped and drowning within the wild waters!!"
					sleep(45)
					M.overlays -= 'WaterStrom.dmi'
					M.Frozen=0
					view()<<"[M] is now unfrozen!!"
				if(src.Hidan)
					view()<<"<font color = red> Hidan attempts to steal [M]'s blood with his three-bladed scythe!!"
					var/damage=src.tai*1.4
					src.firing=1
					M.havekonchuu=1
					M.health-=damage
					if(M.health <= 0)
						M.Death(src)
					sleep(14)
					src.firing=0
				if(src.Kimimaro)
					view()<<"<font color = silver> Kimimaro: Karamatsu No Mai!"
					var/damage=src.tai*1.4
					src.firing=1
					view()<<"[M] has been hit for [damage] damage by Kimimaro's Karamatsu No Mai!"
					M.health-=damage
					if(M.health <= 0)
						M.Death(src)
					sleep(14)
					src.firing=0
				if(src.Jiroubou)
					var/damage=src.tai*1.2
					view()<<"<font color = green> Jiroubou is absorbing your chakra by the second making him stronger!"
					src.firing=1
					M.overlays+='Esphere.dmi'
					M.Frozen=1
					M.chakra-=damage
					src.health+=damage
					sleep(20)
					M.Frozen=0
					M.overlays-='Esphere.dmi'
					src.firing=0
			for(var/mob/M in oview(15,src))
				if(src.Sasori&&get_dist(src,M) <=5)
					view()<<"<font color = red><B> Protect me my puppets..."
					src.Frozen=1
					src.Kaiten=1
					src.overlays+='Mushi.dmi'
					sleep(60)
					src.Frozen=0
					src.Kaiten=0
					src.overlays-='Mushi.dmi'
				if(src.DeidaraF&&get_dist(src,M) <= 3)
					var/damage=src.nin
					src.firing=1
					view()<<"<font color=silver><B>[M] have stepped on a Clay Mine for [damage] damage!!"
					M.health-=damage
					M.overlays+='Boom.dmi'
					if(M.health <=0)
						M.Death(src)
					sleep(25)
					M.overlays-='Boom.dmi'
					src.firing=0
				if(src.DeidaraF&&get_dist(src,M) <= 10)
					src.firing=1
					view()<<"<font color=silver><B>Watch My Clay Art Explode Beautifully!"
					var/obj/ClayBird/K = new /obj/ClayBird
					K.loc = src.loc
					K.nin=src.nin
					K.dir = src.dir
					K.name="[src]"
					K.Move_Delay=0
					K.Gowner=src
					walk_towards(K,M)
					src.firing = 0
					sleep(25)
					del(K)
				if(src.DosuKinuta)
					src.firing=1
					view()<<"Dosu: You will not capture me..."
					M.Move_Delay=2.5
					src.icon='invis.dmi'
					sleep(45)
					M.Move_Delay=1
					src.icon='Npc Dosu.dmi'
					sleep(14)
					src.firing=0
				if(src.Itachi&&get_dist(src,M) >= 8)
					view()<<"Itachi: I'm right behind you. Stay Focused."
					src.firing = 1
					src.loc=locate(M.x,M.y,M.z)
					src.firing = 0
					sleep(15)
				if(src.Itachi&&get_dist(src,M) <= 8)
					src.firing = 1
					view(src)<<"Itachi: Katon Karyuu Endan!"
					var/obj/katonEndan/K = new /obj/katonEndan
					K.loc = src.loc
					K.nin=src.nin
					K.dir = src.dir
					K.name="[src]"
					K.Move_Delay=0
					K.Gowner=src
					walk_towards(K,M)
					src.firing = 0
					sleep(25)
					del(K)
				if(src.Kakuzu&&get_dist(src,M) <= 10)
					src.firing = 1
					view(src)<<"Kakuzu: Katon Karyuu Endan!"
					var/obj/katonEndan/K = new /obj/katonEndan
					K.loc = src.loc
					K.nin=src.nin
					K.dir = src.dir
					K.name="[src]"
					K.Move_Delay=0
					K.Gowner=src
					walk_towards(K,M)
					src.firing = 0
					sleep(25)
					del(K)
				if(src.Kakuzu&&src.health <= 1000000)
					view()<<"Kakuzu: Seems like you've weakened my quite abit. My experience tells me it would be wise to gain another heart before this battle gets too serious.."
					var/damage=500000
					src.firing=1
					view()<<"<font color = red><B> WATCH OUT! KAKUZU IS TRYIN TO STEAL YOUR HEART"
					src.health+= damage
					M.health-=damage
					if(M.health <=0)
						M.Death(src)
					sleep(14)
				if(src.Hidan&&M.havekonchuu&&src.health <= 1500000)
					view()<<"<font color = red><B> Let us both experience this eternal suffering!"
					var/damage=src.tai
					src.firing=1
					src.overlays += 'JashinCircle.dmi'
					view()<<"[src] stabs himself to inflict [damage] damage to [M]!"
					M.health-=damage
					if(M.health <=0)
						M.Death(src)
					sleep(14)
					view()<<"[src] stabs himself to inflict [damage] damage to [M]!"
					M.health-=damage
					if(M.health <=0)
						M.Death(src)
					sleep(14)
					view()<<"[src] stabs himself to inflict [damage] damage to [M]!"
					M.health-=damage
					if(M.health <=0)
						M.Death(src)
					sleep(14)
					src.overlays -= 'JashinCircle.dmi'
					M.havekonchuu=0
					src.firing=0
				if(src.Kimimaro&&get_dist(src,M) >= 8)
					view()<<"<font color=silver><B>Kimimaro: You cannot hide!!"
					src.firing = 1
					src.loc=locate(M.x,M.y,M.z)
					src.firing = 0
					sleep(15)
				if(src.hokage&&get_dist(src,M) >= 8)
					view()<<"<font color=blue><B>Suiton Style: Water Warp No Jutsu!!"
					src.firing = 1
					src.loc=locate(M.x,M.y,M.z)
					src.firing = 0
					sleep(15)
				if(src.hokage&&get_dist(src,M) >=5)
					src.firing = 1
					view()<<"<font color=blue><B>Second Hokage: Suiton Suiryedan No Jutsu!"
					view()<<"[src] inflicts 145000 damage to [M]"
					M.health-=145000
					if(M.health <=0)
						M.Death(src)
					sleep(12)
					src.firing = 0
				if(src.Hidan&&get_dist(src,M) >= 5)
					src.firing = 1
					var/obj/Shuriken/K = new /obj/Shuriken
					K.loc = src.loc
					K.tai=src.tai
					K.dir = src.dir
					K.name="[src]"
					K.Move_Delay=1.5
					K.Gowner=src
					walk_towards(K,M)
					src.firing = 0
					sleep(10)
					del(K)
				if(src.orochimaru&&get_dist(src,M) >= 5)
					src.firing = 1
					view(src)<<"Orochimaru: Katon Karyuu Endan!"
					var/obj/katonEndan/K = new /obj/katonEndan
					K.loc = src.loc
					K.nin=src.nin
					K.dir = src.dir
					K.name="[src]"
					K.Move_Delay=0
					K.Gowner=src
					walk_towards(K,M)
					src.firing = 0
					sleep(25)
					del(K)
				if(src.guard==1&&M.Village=="[src.Village]"||M.rank=="Student"||M.rank=="Genin")
					return
				if(src.guard)
					if(!src.firing)
						src.firing = 1
						var/obj/Windmill/K = new /obj/Windmill
						K.loc = src.loc
						K.nin=src.shurikenskill
						K.dir = src.dir
						K.name="[src]"
						K.Move_Delay=1.5
						K.Gowner=src
						walk_towards(K,M)
						sleep(10)
						src.firing = 0
						sleep(10)
						del(K)
				if(src.TayuyaE&&get_dist(src,M) >= 7)
					var/damage=src.nin
					src.firing = 1
					view(src)<<"Tayuya: Demon Flute!!"
					view()<<"[M] takes [damage] damage from Tayuya's Demon Flute!!"
					if(M)
						M.Move_Delay=10
						sleep(50)
						M.Move_Delay=1
					M.health-=damage
					if(M.health<=0)
						M.Death(src)
					sleep(12)
					src.firing = 0
				if(src.Jiroubou&&get_dist(src,M) >= 5)
					src.firing = 1
					view(src)<<"Jiroubou: doryuuheki!"
					var/obj/doryuuheki/K = new /obj/doryuuheki
					K.loc = src.loc
					K.nin=src.nin
					K.dir = src.dir
					K.name="[src]"
					K.Move_Delay=1
					K.Gowner=src
					walk_towards(K,M)
					src.firing = 0
					sleep(25)
					del(K)
				if(src.Jiroubou==1&&M.Village=="[src.Village]"||M.rank=="Student"||M.rank=="Genin")
					return
				if(src.Jiroubou)
					src.firing = 1
					var/obj/doryuuheki/K = new /obj/doryuuheki
					K.loc = src.loc
					K.nin=src.nin
					K.dir = src.dir
					K.name="[src]"
					K.Move_Delay=1
					K.Gowner=src
					walk_towards(K,M)
					src.firing = 0
					sleep(25)
					del(K)
				if(src.Sakon&&get_dist(src,M) >= 5)
					src.firing = 1
					view(src)<<"YamiShuuha!"
					var/obj/YamiShuuha/K = new /obj/YamiShuuha
					K.loc = src.loc
					K.nin=src.nin
					K.dir = src.dir
					K.name="[src]"
					K.Move_Delay=1.7
					K.Gowner=src
					walk_towards(K,M)
					src.firing = 0
					sleep(25)
					del(K)
				if(src.Sakon==1&&M.Village=="[src.Village]"||M.rank=="Student"||M.rank=="Genin")
					return
				if(src.Sakon)
					src.firing = 1
					var/obj/YamiShuuha/K = new /obj/YamiShuuha
					K.loc = src.loc
					K.nin=src.nin
					K.dir = src.dir
					K.name="[src]"
					K.Move_Delay=1.5
					K.Gowner=src
					walk_towards(K,M)
					src.firing = 0
					sleep(25)
					del(K)
				if(src.KidomaruE&&get_dist(src,M) >= 5)
					src.firing = 1
					view(src)<<"Kidomaru: Web Aroows!"
					var/obj/SpiderArrow/K = new /obj/SpiderArrow
					K.loc = src.loc
					K.nin=src.nin
					K.dir = src.dir
					K.name="[src]"
					K.Move_Delay=1.7
					K.Gowner=src
					walk_towards(K,M)
					src.firing = 0
					sleep(25)
					del(K)
				if(src.==KidomaruE==1&&M.Village=="[src.Village]"||M.rank=="Student"||M.rank=="Genin")
					return
				if(src.KidomaruE)
					src.firing = 1
					var/obj/SpiderArrow/K = new /obj/SpiderArrow
					K.loc = src.loc
					K.nin=src.nin
					K.dir = src.dir
					K.name="[src]"
					K.Move_Delay=1.5
					K.Gowner=src
					walk_towards(K,M)
					src.firing = 0
					sleep(25)
					del(K)

mob
	proc
		NPCAI() //name of proc
			var/mob/M //variable M has to be mob/usr
			while(src) //while src is stil kickin
				if(M in oview(10)) //if M is in oview(5)
					if(M.name in src.killlist) //now if M.name is in src.killlist, this has it only attack if attacked!
						src.loc=locate(M.x,M.y+1,M.z)
						walk_to(src,M,1,4) //src walks to M until 1 block away, moving 4/10ths of a second
						if(M in oview(10)) //if M is in oview(1)
							step_towards(src,M) //src steps toward M
					else //if usr.name isnt in src.killlist
						sleep(8)//pauses for 1 and 1/2 seconds
						step_rand(src) //step randomly on the field
						break //breaks out of the while loop
				else //if M isnt in oview(5)
					for(M in view(src)) //for all Ms in view(src)
						break //breaks out of the while loop
				sleep(3) //pauses 1/2 second before redoing loop
			spawn(2) // pauses 2/10 of second before redoing proc
				NPCAI()

mob
	proc
		MONATTACK(mob/M in get_step(src,src.dir))
			if(M.drunk&&M.Lee)
				view(M)<<"[M] dodges [src]'s attack."
				return
			if(src.Itachi)
				var/damage = round(src.tai)
				if(damage <= 1)
					damage = 1
					view() << "[src] attacks [M] for [damage]!"
					M.health -= damage
					if(M.health <= 0)
						src.killlist = ""
						M.Death(src)
					if(istype(M,/mob/enemy))
						M.killlist += src.name
				else
					view() << "[src] attacks [M] for [damage]!"
					M.health -= damage
					if(M.health <= 0)
						src.killlist = ""
						M.Death(src)
					if(istype(M,/mob/enemy))
						M.killlist += src.name
			if(src.TayuyaE)
				var/damage = round(src.tai/1.5)
				if(damage <= 1)
					damage = 1
					view() << "[src] attacks [M] for [damage]!"
					M.health -= damage
					if(M.health <= 0)
						src.killlist = ""
						M.Death(src)
					if(istype(M,/mob/enemy))
						M.killlist += src.name
				else
					view() << "[src] attacks [M] for [damage]!"
					M.health -= damage
					if(M.health <= 0)
						src.killlist = ""
						M.Death(src)
					if(istype(M,/mob/enemy))
						M.killlist += src.name
			if(src.Hidan)
				var/damage = round(src.tai/1.5)
				if(damage <= 1)
					damage = 1
					view() << "[src] attacks [M] for [damage]!"
					M.health -= damage
					if(M.health <= 0)
						src.killlist = ""
						M.Death(src)
					if(istype(M,/mob/enemy))
						M.killlist += src.name
				else
					view() << "[src] attacks [M] for [damage]!"
					M.health -= damage
					if(M.health <= 0)
						src.killlist = ""
						M.Death(src)
					if(istype(M,/mob/enemy))
						M.killlist += src.name
			if(src.Kakuzu)
				var/damage = round(src.tai/1.6)
				if(damage <= 1)
					damage = 1
					view() << "[src] attacks [M] for [damage]!"
					M.health -= damage
					if(M.health <= 0)
						src.killlist = ""
						M.Death(src)
					if(istype(M,/mob/enemy))
						M.killlist += src.name
				else
					view() << "[src] attacks [M] for [damage]!"
					M.health -= damage
					if(M.health <= 0)
						src.killlist = ""
						M.Death(src)
					if(istype(M,/mob/enemy))
						M.killlist += src.name
			if(src.DeidaraF)
				var/damage = round(src.tai)
				if(damage <= 1)
					damage = 1
					view() << "[src] attacks [M] for [damage]!"
					M.health -= damage
					if(M.health <= 0)
						src.killlist = ""
						M.Death(src)
					if(istype(M,/mob/enemy))
						M.killlist += src.name
				else
					view() << "[src] attacks [M] for [damage]!"
					M.health -= damage
					if(M.health <= 0)
						src.killlist = ""
						M.Death(src)
					if(istype(M,/mob/enemy))
						M.killlist += src.name
			if(src.Tayuya)
				var/damage = round(src.tai/1.2)
				if(damage <= 1)
					damage = 1
					view() << "[src] attacks [M] for [damage]!"
					M.health -= damage
					if(M.health <= 0)
						src.killlist = ""
						M.Death(src)
					if(istype(M,/mob/enemy))
						M.killlist += src.name
				else
					view() << "[src] attacks [M] for [damage]!"
					M.health -= damage
					if(M.health <= 0)
						src.killlist = ""
						M.Death(src)
					if(istype(M,/mob/enemy))
						M.killlist += src.name
			if(src.Jiroubou)
				var/damage = round(src.tai/1.2)
				if(damage <= 1)
					damage = 1
					view() << "[src] attacks [M] for [damage]!"
					M.health -= damage
					if(M.health <= 0)
						src.killlist = ""
						M.Death(src)
					if(istype(M,/mob/enemy))
						M.killlist += src.name
				else
					view() << "[src] attacks [M] for [damage]!"
					M.health -= damage
					if(M.health <= 0)
						src.killlist = ""
						M.Death(src)
					if(istype(M,/mob/enemy))
						M.killlist += src.name
			if(src.Kimimaro)
				var/damage = round(src.tai/1.5)
				if(damage <= 1)
					damage = 1
					view() << "[src] attacks [M] for [damage]!"
					M.health -= damage
					if(M.health <= 0)
						src.killlist = ""
						M.Death(src)
					if(istype(M,/mob/enemy))
						M.killlist += src.name
				else
					view() << "[src] attacks [M] for [damage]!"
					M.health -= damage
					if(M.health <= 0)
						src.killlist = ""
						M.Death(src)
					if(istype(M,/mob/enemy))
						M.killlist += src.name
			if(src.hokage)
				var/damage = round(src.tai/1.6)
				if(damage <= 1)
					damage = 1
					view() << "[src] attacks [M] for [damage]!"
					M.health -= damage
					if(M.health <= 0)
						src.killlist = ""
						M.Death(src)
					if(istype(M,/mob/enemy))
						M.killlist += src.name
				else
					view() << "[src] attacks [M] for [damage]!"
					M.health -= damage
					if(M.health <= 0)
						src.killlist = ""
						M.Death(src)
					if(istype(M,/mob/enemy))
						M.killlist += src.name
			if(src.Sasori)
				var/damage = round(src.tai)
				if(damage <= 1)
					damage = 1
					view() << "[src] attacks [M] for [damage]!"
					M.health -= damage
					if(M.health <= 0)
						src.killlist = ""
						M.Death(src)
					if(istype(M,/mob/enemy))
						M.killlist += src.name
				else
					view() << "[src] attacks [M] for [damage]!"
					M.health -= damage
					if(M.health <= 0)
						src.killlist = ""
						M.Death(src)
					if(istype(M,/mob/enemy))
						M.killlist += src.name
			if(src.orochimaru&&src.canattack||src.Kidomaru&&src.canattack||src.Sakon&&src.canattack)
				if(!M.bit)
					var/damage = round(src.tai/1.6)
					if(damage <= 1)
						damage = 1
						view() << "[src] attacks [M] for [damage]!"
						M.health -= damage
						if(M.health <= 0)
							src.killlist = ""
							M.Death(src)
						if(istype(M,/mob/enemy))
							M.killlist += src.name
					else
						view() << "[src] attacks [M] for [damage]!"
						M.health -= damage
						if(M.health <= 0)
							src.killlist = ""
							M.Death(src)
						if(istype(M,/mob/enemy))
							M.killlist += src.name
					if(M.CS==1&&!src.GOTCS)
						src.canattack=1
						view(src)<<"Orochimaru: You seem like an interesting subject."
						sleep(10)
						view(src)<<"Orochimaru: I will give you the gift of power young one."
						sleep(10)
						view(M)<<"Orochimaru bites the neck of [M]."
						M<<"You begin to feel an extreme amount of pain, Try to survive, your health is constantly draining!"
						M.firing=1
						M.GettingCurseSeal()
						sleep(40)
						view(M)<<"Orochimaru: I do not have any further business here."
						del(src)
						sleep(40)
						M.inmission=0
						M.loc=locate(6,58,20)
						M<<"You have been brought back to your village."
						M.verbs -= new /mob/mission/verb/Escape()
						M.verbs -= new /mob/mission/verb/Escape()
						M.verbs -= new /mob/mission/verb/Escape()
			else
				if(M.ingat||M.intank||M.NPC)				.
					return
/*				if(M.Kaiten)
					var/damage = round(usr.tai)
					if(damage <= 1)
						damage = 1
						M <<"You reflect [src]'s attack causing them to hurt themselfs."
						src.health -= damage
						if(src.health <= 0)
							src.killlist = ""
							src.Death(M)
						return
					else
						M <<"You reflect [src]'s attack causing them to hurt themselfs."
						src.health -= damage
						if(src.health <= 0)
							src.killlist = ""
							src.Death(M)
						return
				if(M.ingat == 1)
					return
				else if(src.Jyuken == 1&&src.canattack == 1)
					if(src.chakra >= 2)
						src.canattack =0
						var/damage = round(src.tai)
						if(damage <= 1)
							damage = 1
							view() << "[src] attacks [M] for [damage]!"
							M.health -= damage
							src.chakra -= 2
							if(M.health <= 0)
								src.killlist = ""
								M.Death(src)
							if(istype(M,/mob/enemy))
								M.killlist += src.name
						else
							view() << "[src] attacks [M] for [damage]!"
							M.health -= damage
							src.chakra -= 2
							if(M.health <= 0)
								src.killlist = ""
								M.Death(src)
							if(istype(M,/mob/enemy))
								M.killlist += src.name
					else
						src.Jyuken = 0
						return*/

mob/proc/GettingCurseSeal()
	XD
		if(src.CS)
			src.health-=15000
			if(src.health<=0)
				src.Death(src)
			src.random=rand(1,40)
			if(src.random==3)
				src.GOTCS=1
				src.firing=0
				src<<"Your pain stops."
				return
			else
				sleep(12)
				goto XD
		else
			return