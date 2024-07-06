extends Node2D

@onready var windows = $Windows

func windowsButton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/pc.tscn")

func _ready():
	windows.button_down.connect(windowsButton_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
