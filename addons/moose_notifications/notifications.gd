extends CanvasLayer

@onready var _notification_logger := $NotificationLogger
@onready var _notification_alerts := $NotificationAlerts

func add_message(args: String):
	_notification_logger.add_message(args)

func add_alert(args: String):
	_notification_alerts.add_alert(args)
