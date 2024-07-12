extends Node2D

@onready var windows = $Windows
@onready var notes = $Notes
@onready var mail = $Email
@onready var messages = $Messages
@onready var files = $Files

func files_selected() -> void:
	get_tree().change_scene_to_file("res://scenes/pc_files_app.tscn")

func messages_selected() -> void:
	get_tree().change_scene_to_file("res://scenes/pc_messages_app.tscn")

func mail_selected() -> void:
	get_tree().change_scene_to_file("res://scenes/pc_mail_app.tscn")

func notes_selected() -> void:
	get_tree().change_scene_to_file("res://scenes/pc_notes_app.tscn")

func windowsButton_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/pc.tscn")

func _ready():
	windows.button_down.connect(windowsButton_pressed)
	notes.button_down.connect(notes_selected)
	mail.button_down.connect(mail_selected)
	messages.button_down.connect(messages_selected)
	files.button_down.connect(files_selected)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
