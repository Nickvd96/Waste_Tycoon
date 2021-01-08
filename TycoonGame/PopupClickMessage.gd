extends Node2D

func _ready():
	$PlasticPopUpLabel.text = "+1"
	#$GFTPopUpLabel.text = "+" + str(GlobalScript.GFTPerSecond)
	#$PaperPopUpLabel.text = "+" + str(GlobalScript.PaperPerSecond)
	
	# Momenteel is de popup automatisch een 1. Er moeten aparte variabelen worden aangemaakt om ze dynamisch te
	# updaten. Dit gebeurt in een later stadium
func _physics_process(delta):
	position.y -= 4
	
