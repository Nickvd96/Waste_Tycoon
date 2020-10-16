extends Node2D

var Plastic = 0
var GFT = 0
var Paper = 0

var PlasticPerSecond = 10
var GFTPerSecond = 2
var PaperPerSecond = 1

func _ready():
	
	$Plasticlabel.text = str(Plastic)
	$GFTLabel.text = str(GFT)
	$Paperlabel.text = str(Paper)
	
func _on_House1_pressed():
	Plastic += 1
	$Plasticlabel.text = str(Plastic)



func _on_PlasticTimer_timeout():
	Plastic += PlasticPerSecond
	$Plasticlabel.text = str(Plastic)


func _on_GFTTimer_timeout():
	GFT += GFTPerSecond
	$GFTLabel.text = str(GFT)


func _on_PaperTimer_timeout():
	Paper += PaperPerSecond
	$Paperlabel.text = str(Paper)
