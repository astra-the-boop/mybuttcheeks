extends Control

@onready var username = $Username
@onready var loginButton = $loginButton

func loginButton_pressed() -> void:
	Global.PlayerName = username.text
	get_tree().change_scene_to_file("res://scenes/pc_desktop.tscn")
	Global.pcLoggedIn = true

func _ready():
	Global.save()
	username.grab_focus()
	loginButton.button_down.connect(loginButton_pressed)
