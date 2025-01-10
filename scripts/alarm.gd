extends Node2D

@onready var back = $GUI/returnToBed
@onready var alarmButton = $AlarmSceneAlarm/Button
@onready var dialouge = $dialougeBox
@onready var dialougeText = $dialougeBox/TextEdit

## DIALOUGE DIES THE LOUGE!!!!
func dialougeBox_open() -> void:
	dialouge.set_visible(true)

func change_dialouge_text(text):
	dialougeText.text = text

func dialougeBox_pressed() -> void:
	if !Global.batteriesObtained:
		dialouge.set_visible(false)
	else:
		get_tree().change_scene_to_file("res://scenes/cutscenes.tscn")
		
	

func alarmButton_pressed() -> void:
	dialougeBox_open()
	if !Global.batteriesObtained:
		change_dialouge_text("""The alarm doesn't seem to turn on...""")
	else:
		change_dialouge_text("You insert the batteries into the alarm and the display seems to light up.")
		

func backButton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/room.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	Global.save()
	back.button_down.connect(backButton_pressed)
	alarmButton.button_down.connect(alarmButton_pressed)
	dialouge.button_down.connect(dialougeBox_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
