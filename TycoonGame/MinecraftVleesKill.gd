extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


func _on_MinecraftVlees_pressed():
	GlobalScript.QuestScore1 = GlobalScript.QuestScore1 -1
	#print(GlobalScript.QuestScore1)
	#print("Minecraft vlees")
	if GlobalScript.QuestScore1 == 0 :
		#print ("You have completed the quest!")
		get_tree().change_scene("res://MainGame.tscn")
		GlobalScript.Paper += 1000
	self.queue_free()
	return

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
