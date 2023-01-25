extends Node2D
 
func _ready():
	Notifications.add_message("This is normal message")
	Notifications.add_message("This is another normal message")
	get_tree().create_timer(2).timeout.connect(repeat)
	Notifications.add_alert("This is an alert!")
	Notifications.add_alert("This is another alert!")
	get_tree().create_timer(2).timeout.connect(annoy)
	

func repeat():
	Notifications.add_message("This is repeated normal message")
	get_tree().create_timer(2).timeout.connect(repeat)
	
func annoy():
	Notifications.add_alert("This is repeated alert!")
	get_tree().create_timer(2).timeout.connect(annoy)	
