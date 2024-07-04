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
	dialouge.set_visible(false)

func alarmButton_pressed() -> void:
	change_dialouge_text("""The alarm doesn't seem to turn on...

You turn the alarm clock over... (not yet :3 i havent coded it in)""")
	dialougeBox_open()

func backButton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/room.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	back.button_down.connect(backButton_pressed)
	alarmButton.button_down.connect(alarmButton_pressed)
	dialouge.button_down.connect(dialougeBox_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
