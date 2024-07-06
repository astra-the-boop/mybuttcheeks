extends Node2D

@onready var back = $GUI/returnToBed
@onready var lock = $lock
@onready var dialouge = $dialougeBox
@onready var dialougeText = $dialougeBox/TextEdit

## DIALOUGE DIES THE LOUGE!!!!
func dialougeBox_open() -> void:
	dialouge.set_visible(true)
	lock.set_visible(false)

func change_dialouge_text(text):
	dialougeText.text = text

func dialougeBox_pressed() -> void:
	dialouge.set_visible(false)
	lock.set_visible(true)


func lock_selected() -> void:
	change_dialouge_text("ill code this shit in later")
	dialougeBox_open()

func backButton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/room.tscn")

func _ready():
	### PRELOAD!!!!
	lock.set_visible(false)
	
	#---
	back.button_down.connect(backButton_pressed)
	dialouge.button_down.connect(dialougeBox_pressed)
	lock.button_down.connect(lock_selected)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
