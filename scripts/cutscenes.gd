extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.save()
	$Timer.start()
	if Global.arc == 0:
		$photoCutscene.set_visible(true)
		$VideoStreamPlayer.set_visible(false)

func _on_timer_timeout():
	if Global.arc == -1:
		get_tree().change_scene_to_file("res://scenes/room.tscn")
	elif Global.arc == 0:
		get_tree().change_scene_to_file("res://scenes/train_station.tscn")
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
