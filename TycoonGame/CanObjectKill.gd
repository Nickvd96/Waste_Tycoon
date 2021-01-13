extends Node

#Geeft door aan de save file dat 'blikje' is opgeruimd in de quest, indien QuestScore 0, ga naar MainGame en geef reward.
func _on_CanObject_pressed():
	
	#Check resterende afval, als dit 0 is, ga terug naar main en ontvang reward. questscore - 1
	GlobalScript.QuestScore1 = GlobalScript.QuestScore1 -1

	#Controleert of QuestScore gelijk is aan 0
	if GlobalScript.QuestScore1 == 0 :
		get_tree().change_scene("res://MainGame.tscn")
		GlobalScript.Paper += 2000
		GlobalScript.GFT += 2000
		GlobalScript.Plastic += 2000
		GlobalScript.QuestScore1 = 4

	#Vernietigd het object 'blikje'
	self.queue_free()
	#verwijder object
	return
