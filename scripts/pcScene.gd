extends Node2D

@onready var PcScreen = $PcScreen
@onready var PowerButton = $PowerButton
@onready var back = $GUI/returnToBed
@onready var PcScreen_link = $PcScreen_link
@onready var checkDrawers = $GUI/checkDrawers


## GUI
func backButton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/room.tscn")

func checkDrawers_buttonPressed() -> void:
	get_tree().change_scene_to_file("res://scenes/drawer.tscn")



func powerButton_press() -> void:
	PcScreen.set_texture(preload("res://assets/PcScene_placeholderOnScreen.png"))
	PowerButton.set_visible(false)
	PcScreen_link.set_visible(true)
	Global.pcScene_pcTurnedOn = true


func Screen_pressed() -> void:
	if Global.pcLoggedIn:
		get_tree().change_scene_to_file("res://scenes/pc_desktop.tscn")
	else:
		get_tree().change_scene_to_file("res://scenes/pc_login.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	Global.save()
	## PRELOAD
	if !Global.pcScene_pcTurnedOn:
		PcScreen_link.set_visible(false)
		PcScreen.set_texture(preload("res://assets/pcScene_blackScreen.png"))
	else:
		PcScreen.set_texture(preload("res://assets/PcScene_placeholderOnScreen.png"))
		PowerButton.set_visible(false)
	
	if Global.phoneDiscovered:
		checkDrawers.set_visible(true)
	
	
	## ----
	PowerButton.button_down.connect(powerButton_press)
	back.button_down.connect(backButton_pressed)
	PcScreen_link.button_down.connect(Screen_pressed)
	checkDrawers.button_down.connect(checkDrawers_buttonPressed)
	
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
