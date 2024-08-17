extends Control

@onready var play = $play
@onready var options = $options
@onready var quit = $quit 
@onready var credits = $credits

func play_pressed() -> void:
	Global.load_data()
	get_tree().change_scene_to_file("res://scenes/room.tscn")
	#in future, set change_scene_to_file based on locaiton based on time/story

# Called when the node enters the scene tree for the first time.
func _ready():
	play.button_down.connect(play_pressed)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
