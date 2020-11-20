extends Node

var questScore = 4

func _start():
	$Label.text = str(questScore)


func _on_CanObject_pressed():
	questScore = questScore -1
	print(questScore)
	self.queue_free()
	print("Blikje")
	return

func _on_BottleObject_pressed():
	questScore = questScore -1
	print(questScore)
	print("Glas")
	return
	
func _on_PaperObject_pressed():
	questScore = questScore -1
	print(questScore)
	print("Papier")
	return
	
func _on_MinecraftVlees_pressed():
	questScore = questScore -1
	print(questScore)
	print("Minecraft vlees")
	return
