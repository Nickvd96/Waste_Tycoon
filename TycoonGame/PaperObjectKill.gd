extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func _on_PaperObject_pressed():
	#questScore = questScore -1
	GlobalScript.QuestScore1 = GlobalScript.QuestScore1 -1
	print(GlobalScript.QuestScore1)
	print("Papier")
	if GlobalScript.QuestScore1 == 0 :
		print ("You have completed the quest!")
	self.queue_free()
	return

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
