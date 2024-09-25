# MooseNotifications

# Installation
1. Clone or download a copy of this repository. 
2. Copy the contents of `addons/moose_notifications` in your `res://addons/moose_notifications` directory. 
3. Enable MooseNotifications in your project plugins. 
For more detailed information, see [Installing plugins](https://docs.godotengine.org/en/latest/tutorials/plugins/editor/installing_plugins.html)

# Getting Started
After installation, MooseNotifications automatically adds a `Notifications` global to your autoloads. To use, simply access it anywhere in your scripts with either `Notifications.add_message("message")` or `Notifications.add_alert("alert")`

See `Example.tscn` and `Example.gd` in the repository for examples. Supports BBCode.

Notification positioning can be set in `res://addons/moose_notifications/notifications.tscn`

Notification styling can be set for Alerts in `res://addons/moose_notifications/notifcation_alerts/notification_alert_item.tscn` and Messages in `res://addons/moose_notifications/notification_logger.tscn`
