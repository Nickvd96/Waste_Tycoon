extends Node

var Plastic = 0
var GFT = 0
var Paper = 0

var PlasticPerSecond = 1
var GFTPerSecond = 1
var PaperPerSecond = 1

var QuestScore1 = 4


func _ready():
	#inladen van savefile 
	Plastic = SaveScript.LoadFile("main", "Plastic", 0)
	GFT = SaveScript.LoadFile("main", "GFT", 0)
	Paper = SaveScript.LoadFile("main", "Paper", 0)
	



