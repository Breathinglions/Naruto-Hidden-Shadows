mob
	verb
		OOC_OnOff()
			if(usr.OOCC==1)
				usr<< "[src] You turn off OOC."
				usr.OOCC = 0
			else
				usr<< "[src] You turn on OOC."
				usr.OOCC = 1
mob
	verb
		WhisperOptions()
			set name = "Whisper On or Off"
			switch(input("Would You Like To Receive Whispers Or Not","Whisper On or Off")in list("Enabled","Disabled"))
				if("Enabled")
					usr.WDisabled=0
					usr<<"Whisper Is Now Enabled"
				if("Disabled")
					usr.WDisabled=1
					usr<<"Whisper Is Now Disabled"
proc
	cuttext(msg as text)
		if(msg)
			if(length(msg)>400)
				msg = copytext(msg,1,400) + "...."
		return msg
mob/verb/OOC(msg as text)
	set desc = "Say something to everyone in the game"
	var/list/L
	L = list("font size","font color")
	for(var/H in L)
		if(findtext(msg,H))
			alert("No HTML in text!")
			return
	if(!usr.OOC)
		alert("Can't Speak If Your Muted")
		return
	if(!worldC)
		alert("The World Is Muted")
		return
	if(msg == usr.oldmsg)
		src << "Please, No One Likes People Who Repeat Themselves"
		return
	if(usr.say_delay >= 3)
		alert("Flood Supression: You must wait 8 seconds before using OOC again.")
		return
	if(!msg)
		alert("Message Can't Be Blank")
		return
	if(length(msg) >= 200)
		alert("Message is too long")
		return
	else //if it checks out
		msg=cuttext(msg)
		oldmsg = msg
		text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]:[usr] says, [msg]<BR>","OOCLog.html") // add it to the log
		for(var/mob/M in world)
			if(M.OOC&&M.OOCC)
				M << "<font size=1><font face=Tahoma><B><font color = #696969>([usr.Village])-<font color = #f2bf18>[usr.squad]-[usr]:<font color=#D3D3D3> [msg]"
			if(AFKcheckin == 1)
				usr.checking = 0
		usr.say_delay += 1
		sleep(80)
		usr.say_delay = 0

mob/verb/whisper()
	set name = "Whisper"
	set desc = "Talk to someone in the world"
	var/mob/M = input("","Choose Player") as null|anything in players
	if(!M) return
	var/msg = input("","Whisper") as text
	if(!msg)
		alert("Message Can't Be Blank")
		return
	if(src.testing==1||src.muted == 1)
		src<<"Not right now!"
		return
	if(!usr.OOC)
		alert("Can't Speak If Your Muted")
		return
	if(M.WDisabled)
		src<<"This Player Has Disabled Receiving Whispers"
		return
	else
		msg=cuttext(msg)
		text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]:[usr] says, [msg] to [M]<BR>","Whisper.html") // add it to the log
		M<< "<font size=2><font color=#FF8103><b>[usr] Whispers: [msg]"
		usr<< "<font size=2><font color=#FF8103><b>You Whisper: [M]: [msg]"
mob/verb/VillageSay(msg as text)
	set desc = "Say something to everyone in your village"
	msg = Replace_All(msg)
	var/list/L
	for(var/H in L)
		if(findtext(msg,H))
			alert("No HTML in text!")
			return
	if(!usr.OOC)
		alert("You are muted!")
		return
	if(msg == usr.oldmsg)
		src << "Please, No One Likes People Who Repeat Themselves"
		return
	if(length(msg) <= 1)
		alert("Message is too short")
		return
	if(length(msg) >= 400)
		alert("Message is too long")
		return
	oldmsg = msg
	text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]:[usr] says, [msg]<BR>","Village Say.html") // add it to the log
	for(var/mob/M in world)
		if(usr.Village == M.Village)
			M << "<font size=1><font face=Tahoma><B><font color=white>(Village Say)([usr.Clan])[usr.squad]-<IMG CLASS=icon SRC=\ref[usr.face_icon]><font size = 1>[usr]<font color=yellow>: [msg]"
mob/verb/Say(msg as text)
	msg = Replace_All(msg)
	if(!usr.OOC)
		return
	if(usr.testing)
		usr<<"Not right now!"
		return
	if(msg == usr.oldmsg)
		src << "Please, No One Likes People Who Repeat Themselves"
		return
	if(length(msg) <= 1)
		alert("Message is too short")
		return
	if(usr.say_delay >= 3)
		alert("Flood Supression: You must wait 8 seconds before using OOC again.")
		return
	else //if it checks out
		msg=cuttext(msg)
		oldmsg = msg
		view(usr) << "<font size=1><font face=Tahoma><b><font color=white><BIG>\icon[usr.face_icon]</BIG><font size = 1>[usr]:<font color=#FFD700> [msg]"
		text2file("<font face = Tahoma size = 2 color=black>[ReportDate()]: [usr] says, [msg]<BR>","SayLog.html")
		usr.say_delay += 1
		sleep(80)
		usr.say_delay = 0
mob/verb/SquadSay(msg as text)
	set desc = "Say something to everyone in your squad"
	msg = Replace_All(msg)
	var/list/L
	L = list("font size","font color")
	for(var/H in L)
		if(findtext(msg,H))
			alert("No HTML in text!")
			return
	if(length(msg) >= 400)
		alert("Message is too long")
		return
	for(var/mob/M in world)
		if(usr.squad == M.squad&&M.squads==1)
			M << "<font size=1><font face=verdana><B><font color=white>(Squad Say)([usr.Clan]}-[usr]<font color=red>: [msg]"