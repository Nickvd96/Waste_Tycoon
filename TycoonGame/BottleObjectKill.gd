extends Node

#Geeft door aan de save file dat 'flesje' is opgeruimd in de quest, indien QuestScore 0, ga naar MainGame.
func _on_BottleObject_pressed():
	GlobalScript.QuestScore1 = GlobalScript.QuestScore1 -1

	#Controleert of QuestScore gelijk is aan 0
	if GlobalScript.QuestScore1 == 0 :
		get_tree().change_scene("res://MainGame.tscn")
		GlobalScript.Paper += 2000
		GlobalScript.QuestScore1 = 4
	
		#Vernietigd het object 'flesje'
	self.queue_free()
	return
	
