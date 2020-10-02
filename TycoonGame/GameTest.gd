extends Node2D


var cookies = 0
var cookiesPerSecond = 1

#inladen van het aantal "Cookies"
func _ready():
	$UI/LabelCookies.text = String(cookies)
	$UI/LabalCookiesPerSecond.text = String(cookiesPerSecond) + "/s"
	
	

#elke klik op de image geeft +1
func _on_TextureButton_pressed():
	
	cookies += 1
	$UI/LabelCookies.text = String(cookies)


func _on_Timer_timeout():
	cookies += cookiesPerSecond
	$UI/LabelCookies.text = String(cookies)
