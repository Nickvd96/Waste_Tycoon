extends Node


func _on_MinecraftVlees_pressed():
	#check resterende afval, als dit 0 is, ga terug naar main en ontvang reward. questscore - 1
	GlobalScript.QuestScore1 = GlobalScript.QuestScore1 - 1
	if GlobalScript.QuestScore1 == 0 :
		get_tree().change_scene("res://MainGame.tscn")
		GlobalScript.Paper += 2000
		GlobalScript.GFT += 2000
		GlobalScript.Plastic += 2000
		GlobalScript.QuestScore1 = 4
	#verwijder object
	self.queue_free()
	return

