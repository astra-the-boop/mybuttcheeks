extends Node2D

@onready var closeButton = $closeButton
@onready var forgotPassword = $fogotPassword

func closeButton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/pc_desktop.tscn")

func forgotPassword_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/pc_messages_confirmation.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	closeButton.button_down.connect(closeButton_pressed)
	forgotPassword.button_down.connect(forgotPassword_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
