extends Control

@onready var play = $play
@onready var options = $options
@onready var quit = $quit 
@onready var credits = $credits

func play_pressed() -> void:
	Global.load_data()
	get_tree().change_scene_to_file("res://scenes/room.tscn")
	#in future, set change_scene_to_file based on locaiton based on time/story

func credits_pressed() -> void:
	OS.shell_open("https://github.com/astra-the-boop/mybuttcheeks/wiki/Credits")

func quit_pressed() -> void:
	#are you sure you wanna quit? quitting means that you have ZERO style
	#(class of 09 ref :3)
	get_tree().quit()

# Called when the node enters the scene tree for the first time.
func _ready():
	play.button_down.connect(play_pressed)
	quit.button_down.connect(quit_pressed)
	credits.button_down.connect(credits_pressed)



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
