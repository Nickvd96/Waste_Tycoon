extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

#Gaat terug naar de MainGame als de gebruiker de quest annuleert
func _on_ExitButton_pressed():
	get_tree().change_scene("res://MainGame.tscn")

#Start de 'zoek afval' quest
func _on_QuestStart_pressed():
	get_tree().change_scene("res://SearchQuest.tscn")
