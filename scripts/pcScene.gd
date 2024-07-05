extends Node2D

@onready var PcScreen = $PcScreen
@onready var PowerButton = $PowerButton
@onready var back = $GUI/returnToBed
@onready var PcScreen_link = $PcScreen_link


## GUI
func backButton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/room.tscn")


func powerButton_press() -> void:
	PcScreen.set_texture(preload("res://assets/PcScene_placeholderOnScreen.png"))
	PowerButton.set_visible(false)
	Global.pcScene_pcTurnedOn = true


func Screen_pressed() -> void:
	if !Global.pcScene_pcTurnedOn:
		pass
	else:
		get_tree().change_scene_to_file("res://scenes/pc_login.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	## PRELOAD
	if !Global.pcScene_pcTurnedOn:
		PcScreen.set_texture(preload("res://assets/pcScene_blackScreen.png"))
	else:
		PcScreen.set_texture(preload("res://assets/PcScene_placeholderOnScreen.png"))
		PowerButton.set_visible(false)
	
	
	## ----
	PowerButton.button_down.connect(powerButton_press)
	back.button_down.connect(backButton_pressed)
	PcScreen_link.button_down.connect(Screen_pressed)
	
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
