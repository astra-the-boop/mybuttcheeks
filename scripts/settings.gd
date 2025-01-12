extends Node2D

@onready var saveDataStatus = $saveDataStatus
@onready var backButton = $backButton

func backPressed() -> void:
	get_tree().change_scene_to_file("res://scenes/menu.tscn")

func deleteSave() -> void:
	DirAccess.remove_absolute("user://shitfucker.save")
	saveDataStatus.text = "Save data deleted"
	$deleteSave.disabled = true

# Called when the node enters the scene tree for the first time.
func _ready() -> void:

	backButton.button_down.connect(backPressed)
	
	if !FileAccess.file_exists("user://shitfucker.save"):
		saveDataStatus.text = "No save file found"
	else:
		saveDataStatus.text = "Save file exists"
		$deleteSave.disabled = false
		
	$deleteSave.button_down.connect(deleteSave)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
