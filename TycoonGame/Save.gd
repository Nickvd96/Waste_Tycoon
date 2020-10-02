extends Node
var SavePath = "res://Save-file.cfg"
var config = ConfigFile.new()
var loadResponse = config.load(SavePath)

#section = voor welk gedeelte ermoet worden opgeslagen bv speler gegevens
#Key = de naam van wat er meot worden opgeslagen
#value is de waarde die moet worden opgeslagen
func saveValue(section, key, value):
	config.set_value(section, key, value)
	config.save(SavePath)
	
	#ophalen van de geslecteerde gegevens 
func loadValue (section, key, default):
	return config.get_value(section, key, default)
