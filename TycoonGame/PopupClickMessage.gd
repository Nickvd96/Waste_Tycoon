extends Node2D

#Laat zien hoeveel van een bepaald recyclemiddel wordt toegevoegd bij het klikken op een gebouw
func _ready():
	$PlasticPopUpLabel.text = "+" + str(GlobalScript.PlasticPerSecond)
	$GFTPopUpLabel.text = "+" + str(GlobalScript.GFTPerSecond)
	$PaperPopUpLabel.text = "+" + str(GlobalScript.PaperPerSecond)

func _physics_process(delta):
	position.y -= 4
	
