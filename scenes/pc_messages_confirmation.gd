extends Node2D

@onready var back = $back
@onready var sendCode = $sendCode
@onready var dialouge = $dialougeBox
@onready var dialougeText = $dialougeBox/TextEdit
var dialogueState = 1


##SHITFUCKERS
func back_buttonPressed() -> void:
	get_tree().change_scene_to_file("res://scenes/pc_messages_app.tscn")

func sendCode_buttonPressed() -> void:
	Global.phoneDiscovered = true
	dialougeBox_open()

##DIALOGUE DOES DIALOGUE THINGS
func dialougeBox_open() -> void:
	dialouge.set_visible(true)

func change_dialouge_text(text):
	dialougeText.text = text

func dialougeBox_pressed() -> void:
	if dialogueState == 1:
		change_dialouge_text("You decide to check it out")
		dialogueState += 1
	else:
		dialouge.set_visible(false)
		get_tree().change_scene_to_file("res://scenes/pc.tscn")


func _ready():
	back.button_down.connect(back_buttonPressed)
	sendCode.button_down.connect(sendCode_buttonPressed)
	dialouge.button_down.connect(dialougeBox_pressed)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
