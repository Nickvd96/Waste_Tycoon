extends Node
# voor het testen op mobiel moet res naar user worden veranderd
var savePath = "user://save-file.cfg"
var config = ConfigFile.new()
var loadResponse = config.load(savePath)

#section = voor welk gedeelte ermoet worden opgeslagen bv speler gegevens
#key = de naam van wat er meot worden opgeslagen
#value = de waarde die moet worden opgeslagen

func SaveFile(section, key, value):
	config.set_value(section, key, value)
	config.save(savePath)
	
	
func LoadFile(section, key, default):
	return config.get_value(section, key , default)
	
	
