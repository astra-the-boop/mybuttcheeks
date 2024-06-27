extends VideoStreamPlayer

func _ready():
	print("hello world")
	if is_playing() == false:
		get_tree().change_scene_to_file("res://scenes/room.tscn")
