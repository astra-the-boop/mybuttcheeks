extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	Global.save()
	$Timer.start()
	
func _on_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/room.tscn")
