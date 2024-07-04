extends Node2D

@onready var back = $GUI/returnToBed

func backButton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/room.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	back.button_down.connect(backButton_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
