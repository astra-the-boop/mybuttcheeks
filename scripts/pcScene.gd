extends Node2D

@onready var PcScreen = $PcScreen
@onready var PowerButton = $PowerButton


func powerButton_press() -> void:
	PcScreen.set_texture(preload("res://assets/PcScene_placeholderOnScreen.png"))
	PowerButton.set_visible(false)


# Called when the node enters the scene tree for the first time.
func _ready():
	PowerButton.button_down.connect(powerButton_press)
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
