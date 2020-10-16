extends Node2D


# ALLES DAT WORD INGELADEN AAN HET BEGIN
func _ready():
	
	
	
	#Statische label inhoud
	$Plasticlabel.text = str(GlobalScript.Plastic)
	$GFTLabel.text = str(GlobalScript.GFT)
	$Paperlabel.text = str(GlobalScript.Paper)
	
	

#GEBOUWEN

#Gebouw 1
func _on_House1_pressed():
	GlobalScript.Plastic += 1
	$Plasticlabel.text = str(GlobalScript.Plastic)



#TIMERS PER SEC
#
# plastic timer
func _on_PlasticTimer_timeout():
	GlobalScript.Plastic += GlobalScript.PlasticPerSecond
	$Plasticlabel.text = str(GlobalScript.Plastic)

#GFT timer
func _on_GFTTimer_timeout():
	GlobalScript.GFT += GlobalScript.GFTPerSecond
	$GFTLabel.text = str(GlobalScript.GFT)

#Paper timer
func _on_PaperTimer_timeout():
	GlobalScript.Paper += GlobalScript.PaperPerSecond
	$Paperlabel.text = str(GlobalScript.Paper)


func _on_SaveResourcesPerSec_timeout():
	SaveScript.SaveFile("main", "Plastic", GlobalScript.Plastic)
	SaveScript.SaveFile("main", "GFT", GlobalScript.GFT)
	SaveScript.SaveFile("main", "Paper", GlobalScript.Paper)
