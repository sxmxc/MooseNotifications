extends Node2D
 
func _ready():
	Notifications.add_message("This is normal message")
	Notifications.add_alert("This is an alert!")
