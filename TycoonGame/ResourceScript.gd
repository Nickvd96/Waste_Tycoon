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
	$ControlFactory1/Plasticlabel.text = str(GlobalScript.Plastic)

func _on_House2_pressed():
	GlobalScript.GFT += 1
	$ControlFactory2/GFTLabel.text = str (GlobalScript.GFT)

func _on_House3_pressed():
	GlobalScript.Paper += 1
	$ControlFactory3/Paperlabel.text = str(GlobalScript.Paper)

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









