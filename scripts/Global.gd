extends Node

#SAVE
func save():
	var file = FileAccess.open("user://shitfucker.save", FileAccess.WRITE)
	file.store_var(arc)
	file.store_var(PlayerName)
	file.store_var(roomScene_firstLoad)
	file.store_var(pcScene_pcTurnedOn)
	file.store_var(pcLoggedIn)
	file.store_var(phoneDiscovered)
	file.store_var(closetUnlocked)
	file.store_var(batteriesObtained)

func load_data():
	if FileAccess.file_exists("user://shitfucker.save"):
		var file = FileAccess.open("user://shitfucker.save", FileAccess.READ)
		arc = file.get_var(arc)
		PlayerName = file.get_var()
		roomScene_firstLoad = file.get_var(roomScene_firstLoad)
		pcScene_pcTurnedOn = file.get_var(pcScene_pcTurnedOn)
		pcLoggedIn = file.get_var(pcLoggedIn)
		phoneDiscovered = file.get_var(phoneDiscovered)
		closetUnlocked = file.get_var(closetUnlocked)
		batteriesObtained = file.get_var(batteriesObtained)
	else:
		print("no data saved")


var arc = -1
var PlayerName = ""

#PROLOGUE / ARC 0
var roomScene_firstLoad = true
var pcScene_pcTurnedOn = false
var pcLoggedIn = false
var phoneDiscovered = false
var closetUnlocked = false
var batteriesObtained = false
