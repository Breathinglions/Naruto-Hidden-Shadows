mob
	Move()
		if(src.Moveing || src.Frozen )
			return
		else
			src.Moveing = 1
			..()
			if(src.onwater)
				src.WATER()
			sleep(src.Move_Delay)
			src.Moveing = 0
			if(!src.Mountain)
				if(src.Weights)
					usr.Move_Delay=10
					if(src.health<2)
						src<<"You cannot move you are too tired... Rest please!!!"
						src.Frozen=1
						return
					src.health -= 1500
					if(src.Mhealth<=src.Stamcap)
						src<<"Your stamina increased!"
						src.Mhealth += rand(3000,5000)
					else
						usr<<"You have reached your Stam cap."
					if(src.health <= 0)
						src.Death(src)


mob/Bump(mob/src)
	..()
	if(istype(src,/area))//if it's turf...
		return//return...
	if(istype(src,/turf))//if it's turf...
		return//return...
	if(istype(src,/obj))//if it's obj...
		return
	if(usr.Rasenganon)
		if(src.Rasenganon)
			if(usr.dir==NORTH)
				step(usr,SOUTH)
			if(usr.dir==SOUTH)
				step(usr,NORTH)
			if(usr.dir==WEST)
				step(usr,EAST)
			if(usr.dir==EAST)
				step(usr,WEST)
			if(src.dir==NORTH)
				step(src,SOUTH)
			if(src.dir==SOUTH)
				step(src,NORTH)
			if(src.dir==WEST)
				step(src,EAST)
			if(src.dir==EAST)
				step(src,WEST)
			usr.firing=0
			src.firing=0
			usr.Rasenganon=0
			src.Rasenganon=0
			return
		if(src.Chidorion&&!usr.battlingRC)
			usr.battlingRC=1
			src.battlingRC=1
			usr.Frozen=1
			src.Frozen=1
			usr.firing=1
			src.firing=1
			usr.overlays+='rasenganover.dmi'
			src.overlays+='chidoriover.dmi'
			sleep(10)
			if(usr.dir==NORTH&&src.dir==SOUTH)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				if(usr.RasenganD > src.ChidoriD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD]!"
							src.health -= usr.RasenganD
							src.battlingRC=0
							usr.battlingRC=0
							src.overlays-='chidoriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/1.5]!"
							src.health -= usr.RasenganD/1.3
							src.battlingRC=0
							usr.battlingRC=0
							src.overlays-='chidoriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/2]!"
						src.health -= usr.RasenganD/1.3
						src.battlingRC=0
						usr.battlingRC=0
						src.overlays-='chidoriover.dmi'
						usr.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Chidorion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.ChidoriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Chidori for [src.ChidoriD]!"
					usr.health -= src.ChidoriD
					src.battlingRC=0
					usr.battlingRC=0
					src.overlays-='chidoriover.dmi'
					usr.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Chidorion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.ChidoriD=0
					usr.Death(src)
					return
			if(usr.dir==SOUTH&&src.dir==NORTH)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				if(usr.RasenganD > src.ChidoriD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD]!"
							src.health -= usr.RasenganD
							src.battlingRC=0
							usr.battlingRC=0
							src.overlays-='chidoriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/1.5]!"
							src.health -= usr.RasenganD/1.5
							src.battlingRC=0
							usr.battlingRC=0
							src.overlays-='chidoriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/2]!"
						src.health -= usr.RasenganD/2
						src.battlingRC=0
						usr.battlingRC=0
						src.overlays-='chidoriover.dmi'
						usr.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Chidorion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.ChidoriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Chidori for [src.ChidoriD]!"
					usr.health -= src.ChidoriD
					src.battlingRC=0
					usr.battlingRC=0
					src.overlays-='chidoriover.dmi'
					usr.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Chidorion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.ChidoriD=0
					usr.Death(src)
					return
			if(usr.dir==WEST&&src.dir==EAST)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				if(usr.RasenganD > src.ChidoriD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD]!"
							src.health -= usr.RasenganD
							src.battlingRC=0
							usr.battlingRC=0
							src.overlays-='chidoriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/1.5]!"
							src.health -= usr.RasenganD/1.5
							src.battlingRC=0
							usr.battlingRC=0
							src.overlays-='chidoriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/2]!"
						src.health -= usr.RasenganD/2
						src.battlingRC=0
						usr.battlingRC=0
						src.overlays-='chidoriover.dmi'
						usr.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Chidorion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.ChidoriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Chidori for [src.ChidoriD]!"
					usr.health -= src.ChidoriD
					src.battlingRC=0
					usr.battlingRC=0
					src.overlays-='chidoriover.dmi'
					usr.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Chidorion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.ChidoriD=0
					usr.Death(src)
					return
			if(usr.dir==EAST&&src.dir==WEST)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				if(usr.RasenganD > src.ChidoriD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD]!"
							src.health -= usr.RasenganD
							src.battlingRC=0
							usr.battlingRC=0
							src.overlays-='chidoriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/1.5]!"
							src.health -= usr.RasenganD/1.5
							src.battlingRC=0
							usr.battlingRC=0
							src.overlays-='chidoriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/2]!"
						src.health -= usr.RasenganD/2
						src.battlingRC=0
						usr.battlingRC=0
						src.overlays-='chidoriover.dmi'
						usr.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Chidorion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.ChidoriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Chidori for [src.ChidoriD]!"
					usr.health -= src.ChidoriD
					src.battlingRC=0
					usr.battlingRC=0
					src.overlays-='chidoriover.dmi'
					usr.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Chidorion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.ChidoriD=0
					usr.Death(src)
					return
		if(src.Raikirion&&!usr.battlingRR)
			usr.battlingRR=1
			src.battlingRR=1
			usr.Frozen=1
			src.Frozen=1
			usr.firing=1
			src.firing=1
			usr.overlays+='rasenganover.dmi'
			src.overlays+='raikiriover.dmi'
			sleep(10)
			if(usr.dir==NORTH&&src.dir==SOUTH)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				if(usr.RasenganD > src.RaikiriD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD]!"
							src.health -= usr.RasenganD
							src.battlingRR=0
							usr.battlingRR=0
							src.overlays-='raikiriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/1.5]!"
							src.health -= usr.RasenganD/1.5
							src.battlingRR=0
							usr.battlingRR=0
							src.overlays-='raikiriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/2]!"
						src.health -= usr.RasenganD/2
						src.battlingRR=0
						usr.battlingRR=0
						src.overlays-='raikiriover.dmi'
						usr.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Raikirion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.RaikiriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Raikiri for [src.RaikiriD]!"
					usr.health -= src.RaikiriD
					src.battlingRR=0
					usr.battlingRR=0
					src.overlays-='raikiriover.dmi'
					usr.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Raikirion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.RaikiriD=0
					usr.Death(src)
					return
			if(usr.dir==SOUTH&&src.dir==NORTH)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				if(usr.RasenganD > src.RaikiriD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD]!"
							src.health -= usr.RasenganD
							src.battlingRR=0
							usr.battlingRR=0
							src.overlays-='raikiriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/1.5]!"
							src.health -= usr.RasenganD/1.5
							src.battlingRR=0
							usr.battlingRR=0
							src.overlays-='raikiriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/2]!"
						src.health -= usr.RasenganD/2
						src.battlingRR=0
						usr.battlingRR=0
						src.overlays-='raikiriover.dmi'
						usr.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Raikirion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.RaikiriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Raikiri for [src.RaikiriD]!"
					usr.health -= src.RaikiriD
					src.battlingRR=0
					usr.battlingRR=0
					src.overlays-='raikiriover.dmi'
					usr.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Raikirion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.RaikiriD=0
					usr.Death(src)
					return
			if(usr.dir==WEST&&src.dir==EAST)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				if(usr.RasenganD > src.RaikiriD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD]!"
							src.health -= usr.RasenganD
							src.battlingRR=0
							usr.battlingRR=0
							src.overlays-='raikiriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/1.5]!"
							src.health -= usr.RasenganD/1.5
							src.battlingRR=0
							usr.battlingRR=0
							src.overlays-='raikiriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/2]!"
						src.health -= usr.RasenganD/2
						src.battlingRR=0
						usr.battlingRR=0
						src.overlays-='raikiriover.dmi'
						usr.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Raikirion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.RaikiriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Raikiri for [src.RaikiriD]!"
					usr.health -= src.RaikiriD
					src.battlingRR=0
					usr.battlingRR=0
					src.overlays-='raikiriover.dmi'
					usr.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Raikirion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.RaikiriD=0
					usr.Death(src)
					return
			if(usr.dir==EAST&&src.dir==WEST)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				if(usr.RasenganD > src.RaikiriD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD]!"
							src.health -= usr.RasenganD
							src.battlingRR=0
							usr.battlingRR=0
							src.overlays-='raikiriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/1.5]!"
							src.health -= usr.RasenganD/1.5
							src.battlingRR=0
							usr.battlingRR=0
							src.overlays-='raikiriover.dmi'
							usr.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD/2]!"
						src.health -= usr.RasenganD/2
						src.battlingRR=0
						usr.battlingRR=0
						src.overlays-='raikiriover.dmi'
						usr.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Raikirion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.RaikiriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Raikiri for [src.RaikiriD]!"
					usr.health -= src.RaikiriD
					src.battlingRR=0
					usr.battlingRR=0
					src.overlays-='raikiriover.dmi'
					usr.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Raikirion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.RaikiriD=0
					usr.Death(src)
					return
			else
				usr<<"It cancels out!"
				src<<"They cancel out!"
				return
		else
			if(!src.Rasenganon&&!src.Chidorion&&!src.Raikirion)
				view()<<"[usr] hit [src] with their Rasengan for [usr.RasenganD]!"
				src.health -= usr.RasenganD
				usr.battlingRC=0
				src.battlingRC=0
				usr.battlingRR=0
				src.battlingRR=0
				usr.firing=0
				usr.Rasenganon = 0
				usr.RasenganD = 0
				src.Death(usr)
				return
	if(usr.Chidorion)
		if(src.Chidorion)
			if(usr.dir==NORTH)
				step(usr,SOUTH)
			if(usr.dir==SOUTH)
				step(usr,NORTH)
			if(usr.dir==WEST)
				step(usr,EAST)
			if(usr.dir==EAST)
				step(usr,WEST)
			if(src.dir==NORTH)
				step(src,SOUTH)
			if(src.dir==SOUTH)
				step(src,NORTH)
			if(src.dir==WEST)
				step(src,EAST)
			if(src.dir==EAST)
				step(src,WEST)
			usr.firing=0
			src.firing=0
			usr.Chidorion=0
			src.Chidorion=0
			return
		if(src.Rasenganon&&!usr.battlingRC)
			usr.battlingRC=1
			src.battlingRC=1
			usr.Frozen=1
			src.Frozen=1
			usr.firing=1
			src.firing=1
			src.overlays+='rasenganover.dmi'
			usr.overlays+='chidoriover.dmi'
			sleep(10)
			if(usr.dir==NORTH&&src.dir==SOUTH)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				if(usr.ChidoriD > src.RasenganD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD]!"
							src.health -= usr.ChidoriD
							src.battlingRC=0
							usr.battlingRC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/1.5]!"
							src.health -= usr.ChidoriD/1.5
							src.battlingRC=0
							usr.battlingRC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/2]!"
						src.health -= usr.ChidoriD/2
						src.battlingRC=0
						usr.battlingRC=0
						usr.overlays-='chidoriover.dmi'
						src.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Chidorion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.ChidoriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Rasengan for [src.RasenganD]!"
					usr.health -= src.RasenganD
					src.battlingRC=0
					usr.battlingRC=0
					usr.overlays-='chidoriover.dmi'
					src.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Chidorion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.ChidoriD=0
					usr.Death(src)
					return
			if(usr.dir==SOUTH&&src.dir==NORTH)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				if(usr.ChidoriD > src.RasenganD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD]!"
							src.health -= usr.ChidoriD
							src.battlingRC=0
							usr.battlingRC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/1.5]!"
							src.health -= usr.ChidoriD/1.5
							src.battlingRC=0
							usr.battlingRC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/2]!"
						src.health -= usr.ChidoriD/2
						src.battlingRC=0
						usr.battlingRC=0
						usr.overlays-='chidoriover.dmi'
						src.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Chidorion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.ChidoriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Rasengan for [src.RasenganD]!"
					usr.health -= src.RasenganD
					src.battlingRC=0
					usr.battlingRC=0
					usr.overlays-='chidoriover.dmi'
					src.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Chidorion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.ChidoriD=0
					usr.Death(src)
					return
			if(usr.dir==WEST&&src.dir==EAST)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				if(usr.ChidoriD > src.RasenganD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD]!"
							src.health -= usr.ChidoriD
							src.battlingRC=0
							usr.battlingRC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/1.5]!"
							src.health -= usr.ChidoriD/1.5
							src.battlingRC=0
							usr.battlingRC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/2]!"
						src.health -= usr.ChidoriD/2
						src.battlingRC=0
						usr.battlingRC=0
						usr.overlays-='chidoriover.dmi'
						src.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Chidorion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.ChidoriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Rasengan for [src.RasenganD]!"
					usr.health -= src.RasenganD
					src.battlingRC=0
					usr.battlingRC=0
					usr.overlays-='chidoriover.dmi'
					src.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Chidorion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.ChidoriD=0
					usr.Death(src)
					return
			if(usr.dir==EAST&&src.dir==WEST)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				if(usr.ChidoriD > src.RasenganD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD]!"
							src.health -= usr.ChidoriD
							src.battlingRC=0
							usr.battlingRC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/1.5]!"
							src.health -= usr.ChidoriD/1.5
							src.battlingRC=0
							usr.battlingRC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/2]!"
						src.health -= usr.ChidoriD/2
						src.battlingRC=0
						usr.battlingRC=0
						usr.overlays-='chidoriover.dmi'
						src.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Chidorion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.ChidoriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Rasengan for [src.RasenganD]!"
					usr.health -= src.RasenganD
					src.battlingRC=0
					usr.battlingRC=0
					usr.overlays-='chidoriover.dmi'
					src.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Chidorion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.ChidoriD=0
					usr.Death(src)
					return
			else
				usr<<"It cancels out!"
				src<<"They cancel out!"
				return
		if(src.Raikirion&&!usr.battlingRiC)
			usr.battlingRiC=1
			src.battlingRiC=1
			usr.Frozen=1
			src.Frozen=1
			usr.firing=1
			src.firing=1
			src.overlays+='Raikiriover.dmi'
			usr.overlays+='chidoriover.dmi'
			sleep(10)
			if(usr.dir==NORTH&&src.dir==SOUTH)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				if(usr.ChidoriD > src.RaikiriD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD]!"
							src.health -= usr.ChidoriD
							src.battlingRiC=0
							usr.battlingRiC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='Raikiriover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Raikirion=0
							src.firing=0
							src.RaikiriD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/1.5]!"
							src.health -= usr.ChidoriD/1.5
							src.battlingRiC=0
							usr.battlingRiC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='Raikiriover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Raikirion=0
							src.RaikiriD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/2]!"
						src.health -= usr.ChidoriD/2
						src.battlingRiC=0
						usr.battlingRiC=0
						usr.overlays-='chidoriover.dmi'
						src.overlays-='Raikiriover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Chidorion=0
						usr.Raikirion=0
						src.firing=0
						src.RaikiriD=0
						usr.ChidoriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Raikiri for [src.RaikiriD]!"
					usr.health -= src.RasenganD
					src.battlingRiC=0
					usr.battlingRiC=0
					usr.overlays-='chidoriover.dmi'
					src.overlays-='Raikiriover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Chidorion=0
					usr.Raikirion=0
					src.firing=0
					src.RaikiriD=0
					usr.ChidoriD=0
					usr.Death(src)
					return
			if(usr.dir==SOUTH&&src.dir==NORTH)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				if(usr.ChidoriD > src.RaikiriD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD]!"
							src.health -= usr.ChidoriD
							src.battlingRiC=0
							usr.battlingRiC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='Raikiriover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Raikirion=0
							src.firing=0
							src.RaikiriD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/1.5]!"
							src.health -= usr.ChidoriD/1.5
							src.battlingRiC=0
							usr.battlingRiC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='Raikiriover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Raikirion=0
							src.RaikiriD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/2]!"
						src.health -= usr.ChidoriD/2
						src.battlingRiC=0
						usr.battlingRiC=0
						usr.overlays-='chidoriover.dmi'
						src.overlays-='Raikiriover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Chidorion=0
						usr.Raikirion=0
						src.firing=0
						src.RaikiriD=0
						usr.ChidoriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Raikiri for [src.RaikiriD]!"
					usr.health -= src.RasenganD
					src.battlingRiC=0
					usr.battlingRiC=0
					usr.overlays-='chidoriover.dmi'
					src.overlays-='Raikiriover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Chidorion=0
					usr.Raikirion=0
					src.firing=0
					src.RaikiriD=0
					usr.ChidoriD=0
					usr.Death(src)
					return
			if(usr.dir==WEST&&src.dir==EAST)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				if(usr.ChidoriD > src.RaikiriD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD]!"
							src.health -= usr.ChidoriD
							src.battlingRiC=0
							usr.battlingRiC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='Raikiriover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Raikirion=0
							src.firing=0
							src.RaikiriD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/1.5]!"
							src.health -= usr.ChidoriD/1.5
							src.battlingRiC=0
							usr.battlingRiC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='Raikiriover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Raikirion=0
							src.RaikiriD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/2]!"
						src.health -= usr.ChidoriD/2
						src.battlingRiC=0
						usr.battlingRiC=0
						usr.overlays-='chidoriover.dmi'
						src.overlays-='Raikiriover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Chidorion=0
						usr.Raikirion=0
						src.firing=0
						src.RaikiriD=0
						usr.ChidoriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Raikiri for [src.RaikiriD]!"
					usr.health -= src.RasenganD
					src.battlingRiC=0
					usr.battlingRiC=0
					usr.overlays-='chidoriover.dmi'
					src.overlays-='Raikiriover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Chidorion=0
					usr.Raikirion=0
					src.firing=0
					src.RaikiriD=0
					usr.ChidoriD=0
					usr.Death(src)
					return
			if(usr.dir==EAST&&src.dir==WEST)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				if(usr.ChidoriD > src.RaikiriD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD]!"
							src.health -= usr.ChidoriD
							src.battlingRiC=0
							usr.battlingRiC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='Raikiriover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Raikirion=0
							src.firing=0
							src.RaikiriD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/1.5]!"
							src.health -= usr.ChidoriD/1.5
							src.battlingRiC=0
							usr.battlingRiC=0
							usr.overlays-='chidoriover.dmi'
							src.overlays-='Raikiriover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Chidorion=0
							usr.Raikirion=0
							src.RaikiriD=0
							usr.ChidoriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD/2]!"
						src.health -= usr.ChidoriD/2
						src.battlingRiC=0
						usr.battlingRiC=0
						usr.overlays-='chidoriover.dmi'
						src.overlays-='Raikiriover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Chidorion=0
						usr.Raikirion=0
						src.firing=0
						src.RaikiriD=0
						usr.ChidoriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Raikiri for [src.RaikiriD]!"
					usr.health -= src.RasenganD
					src.battlingRiC=0
					usr.battlingRiC=0
					usr.overlays-='chidoriover.dmi'
					src.overlays-='Raikiriover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Chidorion=0
					usr.Raikirion=0
					src.firing=0
					src.RaikiriD=0
					usr.ChidoriD=0
					usr.Death(src)
					return
			else
				usr<<"It cancels out!"
				src<<"They cancel out!"
				return
		else
			if(!src.Rasenganon&&!src.Chidorion&&!src.Raikirion)
				view()<<"[usr] hit [src] with their Chidori for [usr.ChidoriD]!"
				src.health -= usr.ChidoriD
				usr.battlingRC=0
				src.battlingRC=0
				usr.battlingRiC=0
				src.battlingRiC=0
				usr.firing=0
				usr.ChidoriD = 0
				usr.Chidorion = 0
				src.Death(usr)
				return
	if(usr.Raikirion)
		if(src.Raikirion)
			if(usr.dir==NORTH)
				step(usr,SOUTH)
			if(usr.dir==SOUTH)
				step(usr,NORTH)
			if(usr.dir==WEST)
				step(usr,EAST)
			if(usr.dir==EAST)
				step(usr,WEST)
			if(src.dir==NORTH)
				step(src,SOUTH)
			if(src.dir==SOUTH)
				step(src,NORTH)
			if(src.dir==WEST)
				step(src,EAST)
			if(src.dir==EAST)
				step(src,WEST)
			usr.firing=0
			src.firing=0
			usr.Raikirion=0
			src.Raikirion=0
			return
		if(src.Rasenganon&&!usr.battlingRR)
			usr.battlingRR=1
			src.battlingRR=1
			usr.Frozen=1
			src.Frozen=1
			usr.firing=1
			src.firing=1
			src.overlays+='rasenganover.dmi'
			usr.overlays+='Raikiriover.dmi'
			sleep(10)
			if(usr.dir==NORTH&&src.dir==SOUTH)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				if(usr.RaikiriD > src.RasenganD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD]!"
							src.health -= usr.RaikiriD
							src.battlingRR=0
							usr.battlingRR=0
							usr.overlays-='Raikiriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD/1.5]!"
							src.health -= usr.RaikiriD/1.5
							src.battlingRR=0
							usr.battlingRR=0
							usr.overlays-='Raikiriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD/2]!"
						src.health -= usr.RaikiriD/2
						src.battlingRR=0
						usr.battlingRR=0
						usr.overlays-='Raikiriover.dmi'
						src.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Raikirion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.RaikiriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Rasengan for [src.RasenganD]!"
					usr.health -= src.RasenganD
					src.battlingRR=0
					usr.battlingRR=0
					usr.overlays-='Raikiriover.dmi'
					src.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Raikirion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.RaikiriD=0
					usr.Death(src)
					return
			if(usr.dir==SOUTH&&src.dir==NORTH)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				if(usr.RaikiriD > src.RasenganD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD]!"
							src.health -= usr.RaikiriD
							src.battlingRR=0
							usr.battlingRR=0
							usr.overlays-='Raikiriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD/1.5]!"
							src.health -= usr.RaikiriD/1.5
							src.battlingRR=0
							usr.battlingRR=0
							usr.overlays-='Raikiriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD/2]!"
						src.health -= usr.RaikiriD/2
						src.battlingRR=0
						usr.battlingRR=0
						usr.overlays-='Raikiriover.dmi'
						src.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Raikirion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.RaikiriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Rasengan for [src.RasenganD]!"
					usr.health -= src.RasenganD
					src.battlingRR=0
					usr.battlingRR=0
					usr.overlays-='Raikiriover.dmi'
					src.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Raikirion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.RaikiriD=0
					usr.Death(src)
					return
			if(usr.dir==WEST&&src.dir==EAST)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				if(usr.RaikiriD > src.RasenganD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD]!"
							src.health -= usr.RaikiriD
							src.battlingRR=0
							usr.battlingRR=0
							usr.overlays-='Raikiriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD/1.5]!"
							src.health -= usr.RaikiriD/1.5
							src.battlingRR=0
							usr.battlingRR=0
							usr.overlays-='Raikiriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD/2]!"
						src.health -= usr.RaikiriD/2
						src.battlingRR=0
						usr.battlingRR=0
						usr.overlays-='Raikiriover.dmi'
						src.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Raikirion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.RaikiriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Rasengan for [src.RasenganD]!"
					usr.health -= src.RasenganD
					src.battlingRR=0
					usr.battlingRR=0
					usr.overlays-='Raikiriover.dmi'
					src.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Raikirion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.RaikiriD=0
					usr.Death(src)
					return
			if(usr.dir==EAST&&src.dir==WEST)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				if(usr.RaikiriD > src.RasenganD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD]!"
							src.health -= usr.RaikiriD
							src.battlingRR=0
							usr.battlingRR=0
							usr.overlays-='Raikiriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Rasenganon=0
							src.firing=0
							src.RasenganD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD/1.5]!"
							src.health -= usr.RaikiriD/1.5
							src.battlingRR=0
							usr.battlingRR=0
							usr.overlays-='Raikiriover.dmi'
							src.overlays-='rasenganover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Rasenganon=0
							src.RasenganD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD/2]!"
						src.health -= usr.RaikiriD/2
						src.battlingRR=0
						usr.battlingRR=0
						usr.overlays-='Raikiriover.dmi'
						src.overlays-='rasenganover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Raikirion=0
						usr.Rasenganon=0
						src.firing=0
						src.RasenganD=0
						usr.RaikiriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Rasengan for [src.RasenganD]!"
					usr.health -= src.RasenganD
					src.battlingRR=0
					usr.battlingRR=0
					usr.overlays-='Raikiriover.dmi'
					src.overlays-='rasenganover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Raikirion=0
					usr.Rasenganon=0
					src.firing=0
					src.RasenganD=0
					usr.RaikiriD=0
					usr.Death(src)
					return
			else
				usr<<"It cancels out!"
				src<<"They cancel out!"
				return
		if(src.Chidorion&&!usr.battlingRiC)
			usr.battlingRiC=1
			src.battlingRiC=1
			usr.Frozen=1
			src.Frozen=1
			usr.firing=1
			src.firing=1
			src.overlays+='chidoriover.dmi'
			usr.overlays+='Raikiriover.dmi'
			sleep(10)
			if(usr.dir==NORTH&&src.dir==SOUTH)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				if(usr.RaikiriD > src.ChidoriD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD]!"
							src.health -= usr.RaikiriD
							src.battlingRiC=0
							usr.battlingRiC=0
							usr.overlays-='Raikiriover.dmi'
							src.overlays-='chidoriover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Chidorion=0
							src.firing=0
							src.ChidoriD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD/1.5]!"
							src.health -= usr.RaikiriD/1.5
							src.battlingRiC=0
							usr.battlingRiC=0
							usr.overlays-='Raikiriover.dmi'
							src.overlays-='chidoriover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Chidorion=0
							src.ChidoriD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD/2]!"
						src.health -= usr.RaikiriD/2
						src.battlingRiC=0
						usr.battlingRiC=0
						usr.overlays-='Raikiriover.dmi'
						src.overlays-='chidoriover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Raikirion=0
						usr.Chidorion=0
						src.firing=0
						src.ChidoriD=0
						usr.RaikiriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Rasengan for [src.ChidoriD]!"
					usr.health -= src.ChidoriD
					src.battlingRiC=0
					usr.battlingRiC=0
					usr.overlays-='Raikiriover.dmi'
					src.overlays-='chidoriover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Raikirion=0
					usr.Chidorion=0
					src.firing=0
					src.ChidoriD=0
					usr.RaikiriD=0
					usr.Death(src)
					return
			if(usr.dir==SOUTH&&src.dir==NORTH)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				usr.y-=1
				src.y-=1
				sleep(20)
				usr.y+=1
				src.y+=1
				sleep(20)
				if(usr.RaikiriD > src.ChidoriD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD]!"
							src.health -= usr.RaikiriD
							src.battlingRiC=0
							usr.battlingRiC=0
							usr.overlays-='Raikiriover.dmi'
							src.overlays-='chidoriover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Chidorion=0
							src.firing=0
							src.ChidoriD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD/1.5]!"
							src.health -= usr.RaikiriD/1.5
							src.battlingRiC=0
							usr.battlingRiC=0
							usr.overlays-='Raikiriover.dmi'
							src.overlays-='chidoriover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Chidorion=0
							src.ChidoriD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD/2]!"
						src.health -= usr.RaikiriD/2
						src.battlingRiC=0
						usr.battlingRiC=0
						usr.overlays-='Raikiriover.dmi'
						src.overlays-='chidoriover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Raikirion=0
						usr.Chidorion=0
						src.firing=0
						src.ChidoriD=0
						usr.RaikiriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Rasengan for [src.ChidoriD]!"
					usr.health -= src.ChidoriD
					src.battlingRiC=0
					usr.battlingRiC=0
					usr.overlays-='Raikiriover.dmi'
					src.overlays-='chidoriover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Raikirion=0
					usr.Chidorion=0
					src.firing=0
					src.ChidoriD=0
					usr.RaikiriD=0
					usr.Death(src)
					return
			if(usr.dir==WEST&&src.dir==EAST)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				if(usr.RaikiriD > src.ChidoriD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD]!"
							src.health -= usr.RaikiriD
							src.battlingRiC=0
							usr.battlingRiC=0
							usr.overlays-='Raikiriover.dmi'
							src.overlays-='chidoriover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Chidorion=0
							src.firing=0
							src.ChidoriD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD/1.5]!"
							src.health -= usr.RaikiriD/1.5
							src.battlingRiC=0
							usr.battlingRiC=0
							usr.overlays-='Raikiriover.dmi'
							src.overlays-='chidoriover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Chidorion=0
							src.ChidoriD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD/2]!"
						src.health -= usr.RaikiriD/2
						src.battlingRiC=0
						usr.battlingRiC=0
						usr.overlays-='Raikiriover.dmi'
						src.overlays-='chidoriover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Raikirion=0
						usr.Chidorion=0
						src.firing=0
						src.ChidoriD=0
						usr.RaikiriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Rasengan for [src.ChidoriD]!"
					usr.health -= src.ChidoriD
					src.battlingRiC=0
					usr.battlingRiC=0
					usr.overlays-='Raikiriover.dmi'
					src.overlays-='chidoriover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Raikirion=0
					usr.Chidorion=0
					src.firing=0
					src.ChidoriD=0
					usr.RaikiriD=0
					usr.Death(src)
					return
			if(usr.dir==EAST&&src.dir==WEST)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				usr.x-=1
				src.x-=1
				sleep(20)
				usr.x+=1
				src.x+=1
				sleep(20)
				if(usr.RaikiriD > src.ChidoriD)
					if(usr.tai > src.tai)
						if(usr.nin > src.nin)
							view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD]!"
							src.health -= usr.RaikiriD
							src.battlingRiC=0
							usr.battlingRiC=0
							usr.overlays-='Raikiriover.dmi'
							src.overlays-='chidoriover.dmi'
							usr.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Chidorion=0
							src.firing=0
							src.ChidoriD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
						else
							view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD/1.5]!"
							src.health -= usr.RaikiriD/1.5
							src.battlingRiC=0
							usr.battlingRiC=0
							usr.overlays-='Raikiriover.dmi'
							src.overlays-='chidoriover.dmi'
							usr.firing=0
							src.firing=0
							src.Frozen=0
							usr.Frozen=0
							src.Raikirion=0
							usr.Chidorion=0
							src.ChidoriD=0
							usr.RaikiriD=0
							src.Death(usr)
							return
					else
						view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD/2]!"
						src.health -= usr.RaikiriD/2
						src.battlingRiC=0
						usr.battlingRiC=0
						usr.overlays-='Raikiriover.dmi'
						src.overlays-='chidoriover.dmi'
						usr.firing=0
						src.Frozen=0
						usr.Frozen=0
						src.Raikirion=0
						usr.Chidorion=0
						src.firing=0
						src.ChidoriD=0
						usr.RaikiriD=0
						src.Death(usr)
						return
				else
					view()<<"[src] hit [usr] with their Rasengan for [src.ChidoriD]!"
					usr.health -= src.ChidoriD
					src.battlingRiC=0
					usr.battlingRiC=0
					usr.overlays-='Raikiriover.dmi'
					src.overlays-='chidoriover.dmi'
					usr.firing=0
					usr.Frozen=0
					src.Frozen=0
					src.Raikirion=0
					usr.Chidorion=0
					src.firing=0
					src.ChidoriD=0
					usr.RaikiriD=0
					usr.Death(src)
					return
			else
				usr<<"It cancels out!"
				src<<"They cancel out!"
				return
		else
			if(!src.Rasenganon&&!src.Chidorion&&!src.Raikirion)
				view()<<"[usr] hit [src] with their Raikiri for [usr.RaikiriD]!"
				src.health -= usr.RaikiriD
				usr.battlingRiC=0
				src.battlingRiC=0
				usr.battlingRR=0
				src.battlingRR=0
				usr.firing=0
				usr.RaikiriD = 0
				usr.Raikirion = 0
				src.Death(usr)
				return

 if(istype(src,/turf))//if it's turf...
  return//return...
 if(istype(src,/obj))//if it's obj...
  return//return..
 if(istype(src,/area))//if it's area...
  return//return...
 else if(usr.ingat&&!usr.Jujin)//GATSUUGA
  if(src.isdog)return
  if(src==usr.owner)return
  var/Damage = round(usr.tai*1.5)//define var damage(you can make it better)
  if(Damage <= 0)//if damage = 0
   Damage = 1//damage = 1
   src.health -= Damage//lose hp..
   view()<<"[usr] hit [src] with their Tsuuga for [Damage]!"//say it to those who are near you...
   src.Death(usr)//Call death proc
   usr.loc = locate(src.x,src.y,src.z)
  else
   if(src==usr.owner)return
   src.health -= Damage//lose hp...
   view()<<"[usr] hit [src] with their Tsuuga for [Damage]!"//say it to those who are near you...
   usr.loc = locate(src.x,src.y,src.z)
   src.Death(usr)

 else if(usr.inkiba)//karamatsu
  var/Damage = round(usr.tai*1.6)//define var damage(you can make it better)
  if(Damage <= 0)//if damage = 0
   Damage = 1//damage = 1
   src.health -= Damage//lose hp..
   view()<<"[usr] hit [src] with Kiba's Blade for [Damage]!"//say it to those who are near you...
   src.Death(usr)//Call death proc
   usr.loc = locate(src.x,src.y,src.z)
  else//else..
   src.health -= Damage//lose hp...
   view()<<"[usr] hit [src] with Kiba's Blade for [Damage]!"//say it to those who are near you...
   usr.loc = locate(src.x,src.y,src.z)
   src.Death(usr)

 else if(usr.inkara)//karamatsu
  var/Damage = round(usr.tai*1.6)//define var damage(you can make it better)
  if(Damage <= 0)//if damage = 0
   Damage = 1//damage = 1
   src.health -= Damage//lose hp..
   view()<<"[usr] hit [src] with their Karamatsu no Mai for [Damage]!"//say it to those who are near you...
   src.Death(usr)//Call death proc
   usr.loc = locate(src.x,src.y,src.z)
  else//else..
   src.health -= Damage//lose hp...
   view()<<"[usr] hit [src] with their Karamatsu no Mai for [Damage]!"//say it to those who are near you...
   usr.loc = locate(src.x,src.y,src.z)
   src.Death(usr)

 else if(usr.insas)//sassusanoo
  var/Damage = round(usr.nin*1.6)//define var damage(you can make it better)
  if(Damage <= 0)//if damage = 0
   Damage = 1//damage = 1
   src.health -= Damage//lose hp..
   view()<<"[usr] hit [src] with their Susanoo Aura for [Damage]!"//say it to those who are near you...
   src.Death(usr)//Call death proc
   usr.loc = locate(src.x,src.y,src.z)
  else//else..
   src.health -= Damage//lose hp...
   view()<<"[usr] hit [src] with their Susanoo Aura for [Damage]!"//say it to those who are near you...
   usr.loc = locate(src.x,src.y,src.z)
   src.Death(usr)

 else if(usr.intank)//MEAT TANK
  var/Damage = round(usr.tai*1.4)//define var damage(you can make it better)
  if(Damage <= 0)//if damage = 0
   Damage = 1//damage = 1
   src.health -= Damage//lose hp..
   view()<<"[usr] hit [src] with their Nikudan Sensha for [Damage]!"//say it to those who are near you...
   src.Death(usr)//Call death proc
   usr.loc = locate(src.x,src.y,src.z)
  else//else..
   src.health -= Damage//lose hp...
   view()<<"[usr] hit [src] with their Nikudan Sensha for [Damage]!"//say it to those who are near you...
   usr.loc = locate(src.x,src.y,src.z)
   src.Death(usr)

 else if(usr.ingar)//GAROUGA
  var/Damage = round(usr.tai*2.0)//define var damage(you can make it better)
  if(Damage <= 0)//if damage = 0
   Damage = 1//damage = 1
   src.health -= Damage//lose hp..
   view()<<"[usr] hit [src] with their Garouga for [Damage]!"//say it to those who are near you...
   src.Death(usr)//Call death proc
   usr.loc = locate(src.x,src.y,src.z)
  else//else..
   src.health -= Damage//lose hp...
   view()<<"[usr] hit [src] with their Garouga for [Damage]!"//say it to those who are near you...
   usr.loc = locate(src.x,src.y,src.z)
   src.Death(usr)

 else if(usr.inspike)//SPIKES MEAT TANK
  var/Damage = round(usr.tai*1.2)//define var damage(you can make it better)
  if(Damage <= 0)//if damage = 0
   Damage = 1//damage = 1
   src.health -= Damage//lose hp..
   view()<<"[usr] hit [src] with their Nikudan Hari Sensha for [Damage]!"//say it to those who are near you...
   src.Death(usr)//Call death proc
   usr.loc = locate(src.x,src.y,src.z)
  else//else..
   src.health -= Damage//lose hp...
   view()<<"[usr] hit [src] with their Nikudan Hari Sensha for [Damage]!"//say it to those who are near you...
   usr.loc = locate(src.x,src.y,src.z)
   src.Death(usr)

 else if(src.ingat&&src.Jujin)
  var/Damage = round(usr.tai*1.85)//define var damage(you can make it better)
  if(Damage <= 0)//if damage = 0
   Damage = 1//damage = 1
   src.health -= Damage//lose hp..
   view()<<"[usr] hit [src] with their Gatsuuga for [Damage]!"//say it to those who are near you...
   src.Death(usr)//Call death proc
   usr.loc = locate(src.x,src.y,src.z)
  else
   if(src==usr.owner)return
   src.health -= Damage//lose hp...
   view()<<"[usr] hit [src] with their Gatsuuga for [Damage]!"//say it to those who are near you...
   usr.loc = locate(src.x,src.y,src.z)
   src.Death(usr)