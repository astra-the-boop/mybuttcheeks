extends Node2D

var phoneSide = 1

@onready var back = $back
@onready var phone = $phone
@onready var dialouge = $dialougeBox
@onready var dialougeText = $dialougeBox/TextEdit
@onready var phoneInspect = $phoneInspect
@onready var flipOver = $phoneInspect/Button

func backButton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/pc.tscn")

func dialougeBox_open() -> void:
	dialouge.set_visible(true)
	phoneInspect.set_visible(true)


func change_dialouge_text(text):
	dialougeText.text = text

func dialougeBox_pressed() -> void:
	dialouge.set_visible(false)
	phoneInspect.set_visible(false)

func flipPhoneOver() -> void:
	if phoneSide == 1:
		phoneInspect.set_texture(preload("res://assets/phoneFront_temp.png"))
		phoneSide += 1
	else:
		phoneInspect.set_texture(preload("res://assets/phoneBack_temp.png"))
		phoneSide -= 1
	print(phoneSide)
	#i fucking hate programming
	#aaaaaaaaaaaaaaaaaaaaaaaaaaaaa


func phone_pressed() -> void:
	dialougeBox_open()

# Called when the node enters the scene tree for the first time.
func _ready():
	Global.save()
	back.button_down.connect(backButton_pressed)
	phone.button_down.connect(phone_pressed)
	dialouge.button_down.connect(dialougeBox_pressed)
	flipOver.button_down.connect(flipPhoneOver)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
