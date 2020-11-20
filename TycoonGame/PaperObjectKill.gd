extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func _on_PaperObject_pressed():
	#questScore = questScore -1
	#print(questScore)
	print("Papier")
	self.queue_free()
	return

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
