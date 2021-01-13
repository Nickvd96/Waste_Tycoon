extends Node2D


# ALLES DAT WORD INGELADEN AAN HET BEGIN
func _ready():
	
	
	
	#Statische label inhoud
	$ControlFactory1/Plasticlabel.text = str(GlobalScript.Plastic)
	$ControlFactory2/GFTLabel.text = str(GlobalScript.GFT)
	$ControlFactory3/Paperlabel.text = str(GlobalScript.Paper)
	
	

#GEBOUWEN

#Voegt plastic toe bij het tikken op gebouw 1
func _on_House1_pressed():
	GlobalScript.Plastic += 1
	$ControlFactory1/Plasticlabel.text = str(GlobalScript.Plastic)
	
	var click = load("res://PopupClickMessage.tscn")
	var clickInstance = click.instance()
	clickInstance.position = get_local_mouse_position()
	add_child(clickInstance)

#Voegt GFT toe bij het tikken op gebouw 2
func _on_House2_pressed():
	GlobalScript.GFT += 1
	$ControlFactory2/GFTLabel.text = str (GlobalScript.GFT)
	
	var click = load("res://PopupClickMessage.tscn")
	var clickInstance = click.instance()
	clickInstance.position = get_local_mouse_position()
	add_child(clickInstance)

#Voegt Papier toe bij het tikken op gebouw 3
func _on_House3_pressed():
	GlobalScript.Paper += 1
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

#Slaat de nieuwe resources op in de save file
func _on_SaveResourcesPerSec_timeout():
	SaveScript.SaveFile("main", "Plastic", GlobalScript.Plastic)
	SaveScript.SaveFile("main", "GFT", GlobalScript.GFT)
	SaveScript.SaveFile("main", "Paper", GlobalScript.Paper)
	SaveScript.SaveFile("main", "PlasticPerSecond", GlobalScript.PlasticPerSecond)
	SaveScript.SaveFile("main", "GFTPerSecond", GlobalScript.GFTPerSecond)
	SaveScript.SaveFile("main", "PaperPerSecond", GlobalScript.PaperPerSecond)

#Laat de UI zien waar een gebruiker een quest kan kiezen
func _on_QuestButton_pressed():
	$QuestControl/Quest.show()
	
#Minimaliseert de UI waar een gebruiker een quest kan kiezen
func _on_closeButton_pressed():
	$QuestControl/Quest.hide()
	
#Switcht van MainGame naar Quest scene als de Quest 1 knop wordt getikt
func _on_Quest1_pressed():
	get_tree().change_scene("res://QuestScene.tscn")






#Opent de shop bij een klik op de knop
func _on_Openshop_pressed():
	$ShopControl/PopupShop.show()

#Sluit de shop bij een klik op het kruis
func _on_CloseShop_pressed():
	$ShopControl/PopupShop.hide()
