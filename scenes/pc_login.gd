extends Control

@onready var username = $Username
@onready var loginButton = $loginButton

func loginButton_pressed() -> void:
	Global.PlayerName = username.text
	get_tree().change_scene_to_file("res://scenes/pc_desktop.tscn")

func _ready():
	username.grab_focus()
	loginButton.button_down.connect(loginButton_pressed)
