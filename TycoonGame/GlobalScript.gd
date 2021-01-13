extends Node

#Definieert de standaardwaardes voor elk recyclemiddel
var Plastic = 0
var GFT = 0
var Paper = 0

#Voegt 1 van elk recyclemiddel toe per seconde
var PlasticPerSecond = 1
var GFTPerSecond = 1
var PaperPerSecond = 1

var QuestScore1 = 4

#Geeft de nieuwe waardes door aan het savescript
func _ready():
	#inladen van savefile
	Plastic = SaveScript.LoadFile("main", "Plastic", 0)
	GFT = SaveScript.LoadFile("main", "GFT", 0)
	Paper = SaveScript.LoadFile("main", "Paper", 0)
	PlasticPerSecond = SaveScript.LoadFile("main", "PlasticPerSecond", 0)
	GFTPerSecond = SaveScript.LoadFile("main", "GFTPerSecond", 0)
	PaperPerSecond = SaveScript.LoadFile("main", "PaperPerSecond", 0)

	#Voorkomen dat er niets staat in de savefile over resources per seconde, wat een error zou veroorzaken
	if PlasticPerSecond <= 0 :
		PlasticPerSecond = 1
	if GFTPerSecond <= 0 :
		GFTPerSecond = 1
	if PaperPerSecond <= 0 :
		PaperPerSecond = 1
