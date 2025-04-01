
proc/ABoot(mob/M) del(M)

mob/proc/ReportDatez(time)
	var/format = "<b>hh:mm:ss</b>" //MM/DD/YYYY
	return time2text(time, format)

var
	Bugs = null

mob
	verb
		Comments(msg as message)
			set category = "Commands"
			set name = "Report Bug"
			set desc = "No Spamming Please."
			Bugs+="([ReportDate(world.realtime)]) [src.client.address] Reported: [html_encode(msg)]<br>"//THIS IS WHERE THE BUG LOGS TO THE HTML
			text2file("<font face = Tahoma size = 2 color=black>([ReportDate(world.realtime)]) Name: [src] |-| Key: [key] |-| Ip: [src.client.address] |-| Reported: [html_encode(msg)]<br>","Bugs.html") //THIS IS WHERE IT WILL BE RECORDED IN TO A HTML FILE FOR HISTORY CHECKS
proc/ReportDate(time)
	var/format = "hh:mm:ss MM/DD/YYYY"
	return time2text(time, format)

proc/ReportTime(time)
	time = round(world.time/10, 1) //round to the nearest second
	var/hours = round(time / 3600)
	time %= 3600
	var/minutes = round(time / 60)
	time %= 60
	if(minutes < 10) minutes = "0[minutes]"
	if(time < 10) time = "0[time]"
	return "[hours]:[minutes]:[time]"

/*
	Replace proc
	This replaces word in text with replace
	All three arguments are expected to be text
*/
proc
	Replace(text,word,replace)
		var/pos = findtext(text,word)
		while(pos)
			text = copytext(text,1,pos) + replace + copytext(text,pos+length(word))
			pos = findtext(text,word)
		return text

/*
	Replace All proc
	replace_list: list in the format word = replace
	replaces each word with it's replace entry
*/
	Replace_All(text,replace_list)
		for(var/word in replace_list)
			var/pos = findtext(text,word)
			while(pos)
				text = copytext(text,1,pos) + replace_list[word] + copytext(text,pos+length(word))
				pos = findtext(text,word)
		return text

	Escape_String(str)
		return Replace_All(str, list(";" = " ", "$" = " ", "&" = " "))

	//////////////////////////////////////////////////////////////////////////////
	// limit(minimun, value, maximum)
	//   Limits val between min and max (so that min <= returned <= max)
	//////////////////////////////////////////////////////////////////////////////
	limit(min, val, max)
		return min(max, max(min, val))