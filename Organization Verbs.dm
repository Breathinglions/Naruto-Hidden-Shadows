/*----------------------------------------------------------------*/

						//Akatsuki\\

/*----------------------------------------------------------------*/
mob/akatsuki/verb/InviteA(mob/M in players)
	set category="Orangization"
	set name="Organization Invite"
	if(M.rank=="Missing"&&M.Village=="None"&&src.recruits<=9)
		M.Village="Akatsuki"
		var/obj/AKAH/H = new()
		var/obj/AKAS/S = new()
		var/obj/AKASW/B = new()
		M.rank = "Missing"
		B.loc=M
		H.loc=M
		S.loc=M
		M.cap=Ocap
		M.akatsukimember=1
		M.squads=1
		M.verbs += new /mob/Akatsuki/verb/Fuin
		M.verbs += new /mob/Akatsuki/verb/GiveD
		src.recruits+=1

		M.squad="[src.squad]"
	else
		usr<<"Cannot be done, Their in a village."
mob/akatsuki/verb/BootA(mob/M in players)
	set category="Organization"
	set name="Organization Boot"
	if(M.Village=="Akatsuki"&&M.akatsukimember)
		M.Village="Missing"
		for(var/obj/AKAH/H in M.contents)
			del(H)
		for(var/obj/AKAS/S in M.contents)
			del(S)
		M.cap=Hcap
		M.rank = "Missing"
		M.recruits-=1
		M.verbs -= new /mob/Akatsuki/verb/Fuin
		M.verbs -= new /mob/Akatsuki/verb/GiveD
		M.akatsukileader=0
		M.akatsukimember=0
		M.squads=0
		M.squad=""
	else
		usr<<"Cannot be done, Hes either the leader or not even in Akatsuki"
/*----------------------------------------------------------------*/

						//Sound\\

/*----------------------------------------------------------------*/
mob/sound/verb/InviteS(mob/M in players)
	set category="Organization"
	set name="Organization Invite"
	if(M.rank=="Missing"&&M.Village=="None"&&src.recruits<=4)
		var/obj/SOSuit/S = new()
		M.rank = "Missing"
		M.Village="Sound Organization"
		M.soundmember=1
		S.loc=M
		M.squads=1
		M.recruits+=1
		M.verbs += new /mob/sound/verb/Kyoumeisen
		M.verbs += new /mob/SOrg/verb/Cursed
		M.cap=Ocap
		M.squad="[src.squad]"
	else
		usr<<"Cannot be done, Hes either weaker than Jounin or already in Sound."
mob/sound/verb/BootS(mob/M in players)
	set category="Organization"
	set name="Organization Boot"
	if(M.Village=="Sound Organization"&&M.soundmember)
		M.Village="Missing"
		for(var/obj/SOSuit/S in M.contents)
			del(S)
		M.rank = "Missing"
		M.verbs -= new /mob/sound/verb/Kyoumeisen
		M.verbs -= new /mob/SOrg/verb/Cursed
		M.soundmember=0
		M.soundleader=0
		M.squads=0
		M.recruits-=1
		M.cap=Hcap
		M.squad=""
	else
		usr<<"Cannot be done, Hes either the leader or not even in Sound"


/*----------------------------------------------------------------*/

						//SevenSwordsmen\\

/*----------------------------------------------------------------*/
mob/swordsmen/verb/InviteA(mob/M in players)
	set category="Organization"
	set name="Organization Invite"
	if(M.rank=="Missing"&&M.Village=="None"&&src.recruits<=6)
		M.Village="7Swordsmen"
		var/obj/SevenSM/S = new()
		M.rank = "Missing"
		S.loc=M
		M.cap=Ocap
		M.swordsmenmember=1
		M.verbs += new /mob/mist/verb/KirigakurenoJutsu()
		M.verbs += new /mob/mist/verb/MistArmor()
		M.squads=1
		M.recruits+=1
		M.squad="[src.squad]"
	else
		usr<<"Cannot be done, Their in a village."

mob/swordsmen/verb/BootA(mob/M in players)
	set category="Organization"
	set name="Organization Boot"
	if(M.Village=="7Swordsmen"&&M.swordsmenmember)
		M.Village="Missing"
		for(var/obj/Kisamesword/H in M.contents)
			del(H)
		for(var/obj/SevenSM/S in M.contents)
			del(S)
		M.rank = "Missing"
		M.verbs -= new /mob/mist/verb/KirigakurenoJutsu()
		M.verbs -= new /mob/mist/verb/MistArmor()
		M.recruits-=1
		M.swordsmenleader=0
		M.swordsmenmember=0
		M.squads=0
		M.squad=""
	else
		usr<<"Cannot be done, He's either the leader or not even in 7Swordsmen"
/*----------------------------------------------------------------*/

						//Hebi\\

/*----------------------------------------------------------------*/
mob/hebi/verb/InviteA(mob/M in players)
	set category="Organization"
	set name="Organization Invite"
	if(M.rank=="Missing"&&M.Village=="None"&&src.recruits<=4)
		M.Village="Hebi"
		M.rank = "Missing"
		var/obj/HebiS/H = new()
		var/obj/Big_Snake_Scroll/B = new/obj/Big_Snake_Scroll
		B.loc = usr
		H.loc=M
//		S.loc=M
		M.cap=Ocap
		M.hebimember=1
		M.squads=1
		M.recruits+=1
		M.squad="[src.squad]"
	else
		usr<<"Cannot be done, Their in a village."

mob/hebi/verb/BootA(mob/M in players)
	set category="Organization"
	set name="Organization Boot"
	if(M.Village=="Hebi"&&M.Hebimember)
		M.Village="Missing"
		M.rank = "Missing"
		for(var/obj/HebiS/H in M.contents)
			del(H)
		for(var/obj/Big_Snake_Scroll/B in M.contents)
			del(B)
		M.cap=Hcap
		M.recruits-=1
		M.Hebileader=0
		M.Hebimember=0
		M.squads=0
		M.squad=""
	else
		usr<<"Cannot be done, He's either the leader or not even in Hebi"