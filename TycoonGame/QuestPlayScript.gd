extends Node

var questScore = 4

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func _on_CanObject_pressed():
	questScore = questScore -1
	print(questScore)
	#CanObject.queue_free()
	print("Blikje")
	return
