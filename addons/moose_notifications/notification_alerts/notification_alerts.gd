extends VBoxContainer

const alertitem_proto := preload("res://addons/moose_notifications/notification_alerts/notification_alert_item.tscn")

const MAX_LOGS = 10

const DELAY = 3.0

var timer:Tween

var prev_log = ""

func _ready():
	timer = get_tree().create_tween()
	timer.set_loops()
	timer.tween_callback(
		func():
			if get_child_count() > 0:
				get_child(0).queue_free()
	).set_delay(DELAY)
	
	$AreaIndicator.queue_free()

func add_alert(bbcode:String):
	bbcode = "[color=Red][Alert][/color] %s" % bbcode
	#refresh fade timer
	timer.stop(); timer.play()
	#see the new log if can be combined with previous one
	if prev_log == bbcode and get_child_count() > 0:
		var prev_node = get_child(get_child_count() - 1)
		prev_node.amount += 1
		prev_node.amount_label.text = "x" + str(prev_node.amount)
		prev_node.amount_panel.show()
	#create new log node
	else:
		if get_child_count() >= MAX_LOGS:
			get_child(0).queue_free()
		if get_tree():
			await get_tree().process_frame
			var new_node = alertitem_proto.instantiate()
			add_child(new_node)
			new_node.content_label.text = bbcode
			new_node.amount_panel.hide()
			new_node.z_index = 100

	prev_log = bbcode
