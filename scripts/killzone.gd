extends Area2D

@onready var timer = $Timer


func _on_body_entered(body):
	print("YOU DIED!")
	timer.start()

# This function will execute when the timer is timed out.
func _on_timer_timeout():
	get_tree().reload_current_scene()
