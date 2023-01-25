@tool
extends EditorPlugin

#When enable this plugin, it will add a singleton to Autoload
func _enter_tree():
	# Initialization of the plugin goes here.
	add_autoload_singleton("Notifications", "res://addons/MooseNotifications/Notifications.tscn")
	print("MooseNotifications was initialized!")
	print("Project page: https://github.com/sxmxc/MooseNotifications")

func _exit_tree():
	# Clean-up of the plugin goes here.
	remove_autoload_singleton("Notifications")
	print("MooseNotifications was unloaded!")
