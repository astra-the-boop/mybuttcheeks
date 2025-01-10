extends Node2D

@onready var dialogue = $dialougeBox
@onready var dialogueText = $dialougeBox/TextEdit
@onready var dialogueBox = $dialougeBox/dialougeBox2


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	dialogue.button_down.connect(dialogueBox_pressed)

## DIALOUGE DIES THE LOUGE!!!!
func dialougeBox_open() -> void:
	dialogue.set_visible(true)

func change_dialouge_text(text):
	dialogueText.text = text

func dialogueBox_pressed() -> void:
	dialogue.set_visible(false)


	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
