extends Node2D

@onready var back = $back
@onready var batteries = $batteries
@onready var dialouge = $dialougeBox
@onready var dialougeText = $dialougeBox/TextEdit

## DIALOGUE DIES THE LOUGE!!!!
func dialougeBox_open() -> void:
	dialouge.set_visible(true)

func change_dialouge_text(text):
	dialougeText.text = text

func dialougeBox_pressed() -> void:
	dialouge.set_visible(false)

#stuff and shits
func back_buttonPressed() -> void:
	get_tree().change_scene_to_file("res://scenes/room.tscn")

func batteries_selected() -> void:
	Global.batteriesObtained = true
	batteries.set_visible(false)
	dialougeBox_open()

# Called when the node enters the scene tree for the first time.
func _ready():
	Global.save()
	back.button_down.connect(back_buttonPressed)
	batteries.button_down.connect(batteries_selected)
	dialouge.button_down.connect(dialougeBox_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
