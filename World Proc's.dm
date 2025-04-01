world/proc
	AutoReboot()
		set background = 1
		world<<"<center><font color=blue><b>**ATTENTION!!** NHS AUTO REBOOT ACTIVATED.  WORLD REBOOTING IN 30 SECONDS."
		world<<"<center><font color=green><b>***SAVE!!!!***"
		world.SaveAll()
		sleep(100)
		world<<"<center><font color=blue><b>20 SECONDS REMAINING"
		sleep(100)
		world<<"<center><font color=blue><b>10 SECONDS REMAINING"
		sleep(30)
		world<<"<center><font color=red><font size=-1><b>((Due to Reboot The World is now muted))"
		worldC=0
		sleep(20)
		world<<"<center><font color=blue><b>5 SECONDS REMAINING"
		sleep(10)
		world<<"<center><font color=blue><b>4"
		sleep(10)
		world<<"<center><font color=blue><b>3"
		sleep(10)
		world<<"<center><font color=blue><b>2"
		sleep(10)
		world<<"<center><font color=blue><b>1"
		sleep(10)
		world<<"<center><font color=blue><b>SYSTEM REBOOT!"
		worldC=1
		world.Reboot()

world/proc
	AutoRepop()
		set background=1
		world.Repop()
		world<<"<font color=blue><b>The world has been restored.</b></font>"
		spawn(1200)
			world.AutoRepop()

world/proc
	SaveAll()
		set background = 1
		for(var/mob/M in players)
			if(M.client)
				M.SaveK()

world/proc
	AFKcheck()
		set background = 1
		for(var/mob/M in world)
			if(M.client&&!M.AFK)
				M.checking = 1
		world << "<center><b><font size = 3><font color = lime>AFK check, please say something in OOC in the next minute!"
		AFKcheckin = 1
		sleep(600)
		world << "<center><b><font size = 3><font color = lime>You have 10 seconds to say something on the OOC!"
		sleep(100)
		for(var/mob/M in world)
			if(M.checking)
				world<<"[M] Was Kicked"
				del(M)
		AFKcheckin = 0
		spawn(18000)
			AFKcheck()
world/proc
	WarCheck1()
		set background=1
		for(var/mob/E in world)
			if(E.war==1&&E.inwar1==1)
				E.WarringV1="[E.Village]"
			if(E.war==1&&E.inwar2==1)
				E.WarringV2="[E.Village]"
				world<<"<b><font size=2>[E.WarringV1] is fighting [E.WarringV1]"
				spawn(600)
					WarCheck1()

world/proc
	WarCheck2()
		set background=1
		for(var/mob/E in world)
			if(E.z==19&&E.WarringV1>>E.WarringV2)
				world<<"<b> <font size=2>[E.WarringV1] has defeated [E.WarringV2]"
				spawn(600)
					WarCheck2()
			if(E.z==19&&E.WarringV1<<E.WarringV2)
				world<<"<b><font size=2> [E.WarringV2] has defeated [E.WarringV1]"
				spawn(600)
					WarCheck2()