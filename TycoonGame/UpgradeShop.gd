extends TextureButton


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_UpgradePlastic_pressed():
	if GlobalScript.Plastic > 999 :
		GlobalScript.Plastic = GlobalScript.Plastic - 1000
		GlobalScript.PlasticPerSecond = GlobalScript.PlasticPerSecond + 1
		$Levelupsound.play()


func _on_UpgradeGFT_pressed():
	if GlobalScript.GFT > 999 :
		GlobalScript.GFT = GlobalScript.GFT - 1000
		GlobalScript.GFTPerSecond = GlobalScript.GFTPerSecond + 1
		$Levelupsound.play()


func _on_UpgradePaper_pressed():
	if GlobalScript.Paper > 999 :
		GlobalScript.Paper = GlobalScript.Paper - 1000
		GlobalScript.PaperPerSecond = GlobalScript.PaperPerSecond + 1
		$Levelupsound.play()