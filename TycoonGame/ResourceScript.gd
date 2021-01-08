extends Node2D


# ALLES DAT WORD INGELADEN AAN HET BEGIN
func _ready():
	
	
	
	#Statische label inhoud
	$ControlFactory1/Plasticlabel.text = str(GlobalScript.Plastic)
	$ControlFactory2/GFTLabel.text = str(GlobalScript.GFT)
	$ControlFactory3/Paperlabel.text = str(GlobalScript.Paper)
	
	

#GEBOUWEN

#Gebouw 1
func _on_House1_pressed():
	GlobalScript.Plastic += 1
	$Clickingsound.play()
	$ControlFactory1/Plasticlabel.text = str(GlobalScript.Plastic)
	
	var click = load("res://PopupClickMessage.tscn")
	var clickInstance = click.instance()
	clickInstance.position = get_local_mouse_position()
	add_child(clickInstance)

func _on_House2_pressed():
	GlobalScript.GFT += 1
	$Clickingsound.play()
	$ControlFactory2/GFTLabel.text = str (GlobalScript.GFT)
	
	var click = load("res://PopupClickMessage.tscn")
	var clickInstance = click.instance()
	clickInstance.position = get_local_mouse_position()
	add_child(clickInstance)

func _on_House3_pressed():
	GlobalScript.Paper += 1
	$Clickingsound.play()
	$ControlFactory3/Paperlabel.text = str(GlobalScript.Paper)
	
	var click = load("res://PopupClickMessage.tscn")
	var clickInstance = click.instance()
	clickInstance.position = get_local_mouse_position()
	add_child(clickInstance)

#TIMERS PER SEC
#
# plastic timer
func _on_PlasticTimer_timeout():
	GlobalScript.Plastic += GlobalScript.PlasticPerSecond
	$ControlFactory1/Plasticlabel.text = str(GlobalScript.Plastic)

#GFT timer
func _on_GFTTimer_timeout():
	GlobalScript.GFT += GlobalScript.GFTPerSecond
	$ControlFactory2/GFTLabel.text = str(GlobalScript.GFT)

#Paper timer
func _on_PaperTimer_timeout():
	GlobalScript.Paper += GlobalScript.PaperPerSecond
	$ControlFactory3/Paperlabel.text = str(GlobalScript.Paper)


func _on_SaveResourcesPerSec_timeout():
	SaveScript.SaveFile("main", "Plastic", GlobalScript.Plastic)
	SaveScript.SaveFile("main", "GFT", GlobalScript.GFT)
	SaveScript.SaveFile("main", "Paper", GlobalScript.Paper)
	SaveScript.SaveFile("main", "PlasticPerSecond", GlobalScript.PlasticPerSecond)
	SaveScript.SaveFile("main", "GFTPerSecond", GlobalScript.GFTPerSecond)
	SaveScript.SaveFile("main", "PaperPerSecond", GlobalScript.PaperPerSecond)

#questUI
func _on_QuestButton_pressed():
	$QuestControl/Quest.show()
	
	
func _on_closeButton_pressed():
	$QuestControl/Quest.hide()
	
	
func _on_Quest1_pressed():
	get_tree().change_scene("res://QuestScene.tscn")






#shop
func _on_Openshop_pressed():
	$PopupShop.show()

func _on_CloseShop_pressed():
	$PopupShop.hide()
