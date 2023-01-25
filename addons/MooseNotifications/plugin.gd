@tool
extends EditorPlugin

#When enable this plugin, it will add a singleton to Autoload and an input action to Input Map.
#You may need to add a random input action to update Input Map UI.
#Maybe I'll work on this engine bug later, https://github.com/godotengine/godot/issues/25865
func _enter_tree():
	# Initialization of the plugin goes here.
	add_autoload_singleton("Notifications", "res://addons/MooseNotifications/Notifications.tscn")
	
#	ProjectSettings.set_setting("input/toggle_console", {"deadzone":0.5,"events":[default_open_console_event]})
#	ProjectSettings.save()
	print("MooseNotifications was initialized!")
#	print("Project page: ")

func _exit_tree():
	# Clean-up of the plugin goes here.
	remove_autoload_singleton("Notifications")
	print("MooseNotifications was unloaded!")
