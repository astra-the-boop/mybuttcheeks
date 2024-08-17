extends Node2D

@onready var back = $GUI/returnToBed
@onready var lock = $lock
@onready var dialouge = $dialougeBox
@onready var dialougeText = $dialougeBox/TextEdit
@onready var passcodeEnter = $passcodeEnter
@onready var lockOpen = $passcodeEnter/open

var openingCloset = false

## DIALOUGE DIES THE LOUGE!!!!
func dialougeBox_open() -> void:
	dialouge.set_visible(true)
	lock.set_visible(false)

func change_dialouge_text(text):
	dialougeText.text = text

func dialougeBox_pressed() -> void:
	dialouge.set_visible(false)
	lock.set_visible(true)
	if openingCloset:
		openingCloset = false
		get_tree().change_scene_to_file("res://scenes/closet_unlocked.tscn")
	else:
		pass


func lock_selected() -> void:
	passcodeEnter.set_visible(true)

func backButton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/room.tscn")

func attemptOpen() -> void:
	if passcodeEnter.text == "070198":
		passcodeEnter.set_visible(false)
		change_dialouge_text("You hear a click, the lock opens!")
		dialougeBox_open()
		Global.closetUnlocked = true
		openingCloset = true
	else:
		passcodeEnter.set_visible(false)
		change_dialouge_text("Nothing happens, try again sucker")
		dialougeBox_open()

func _ready():
	Global.save()
	### PRELOAD!!!!
	lock.set_visible(false)
	
	#---
	back.button_down.connect(backButton_pressed)
	dialouge.button_down.connect(dialougeBox_pressed)
	lock.button_down.connect(lock_selected)
	lockOpen.button_down.connect(attemptOpen)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
