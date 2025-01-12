extends Node2D

@onready var dialogue = $dialougeBox
@onready var dialogueText = $dialougeBox/TextEdit
@onready var dialogueBox = $dialougeBox/dialougeBox2
var dialogueValue = 0

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Global.arc = 1
	Global.save()
	print(Global.arc)
	dialogue.button_down.connect(dialogueBox_pressed)
	$entertrain.button_down.connect(entertrain)

func entertrain() -> void:
	get_tree().change_scene_to_file("res://scenes/traininside.tscn")

## DIALOUGE DIES THE LOUGE!!!!
func dialougeBox_open() -> void:
	dialogue.set_visible(true)

func change_dialouge_text(text):
	dialogueText.text = text

func dialogueBox_pressed() -> void:
	if dialogueValue == 0:
		change_dialouge_text("On the floor against the cold glass barrier, watery eyes barely holding back tears. The distant cackling of your approaching subway ride against the railways, background sounds to what seemed to be incoherant, yet deafening voices.")
		dialogueValue += 1
	elif dialogueValue == 1:
		change_dialouge_text("Your limbs feel numb. Looking down, the sense of uneasiness, and disbelief consumes your mind - a feeling of dread and unrealness.")
		dialogueValue += 1
	elif dialogueValue == 2:
		change_dialouge_text("Shivering, your mind unstable, incomprehensibly overwhelming - as if it's holding onto a ledge, barely alive. Outside silent, but just a glance at your face - a single drop falls from your baggy eyes - it'd be obvious to anyone that something is wrong.")
		dialogueValue += 1
	elif dialogueValue == 3:
		change_dialouge_text("A meltdown at eight in the morning, being barely awake and conscious did not help, neither was the setting of you being in public.")
		dialogueValue += 1
	elif dialogueValue == 4:
		change_dialouge_text("""Interrupting your line of thoughts, a chime from the speakers above goes off, a monotone voice follows.""")
		dialogueValue += 1
	elif dialogueValue == 5:
		change_dialouge_text("[T2 line: The next train to Tran Hung Dao will depart from Platform B in 1 minute. Please stand behind the yellow line and mind the gap. Thank you.]")
		dialogueValue += 1
	elif dialogueValue == 6:
		change_dialouge_text("Despite your meltdown, you pick yourself up as the train approaches closer.")
		dialogueValue += 1
	elif dialogueValue == 7:
		$background.set_texture(preload("res://assets/Illustrationtrainstateytrainarrived.png"))
		change_dialouge_text(" ")
		dialogueValue += 1
	elif dialogueValue == 8:
		change_dialouge_text("[Platform B - Line T2: The train has arrived at the platform, please mind your step upon entrance. Next destination: Tran Hung Dao station]")
		dialogueValue += 1
	elif dialogueValue == 8:
		change_dialouge_text("You step forward into the train and take a seat.")
		dialogueValue += 1
	else:
		dialogue.set_visible(false)
		$entertrain.set_visible(true)


	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
