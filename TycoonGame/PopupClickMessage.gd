extends Node2D

func _ready():
	$PlasticPopUpLabel.text = "+" + str(GlobalScript.PlasticPerSecond)
	$GFTPopUpLabel.text = "+" + str(GlobalScript.GFTPerSecond)
	$PaperPopUpLabel.text = "+" + str(GlobalScript.PaperPerSecond)

func _physics_process(delta):
	position.y -= 4
