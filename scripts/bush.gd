extends Area2D

@onready var sprite = $Sprite2D
@onready var timer = $Timer



func _on_body_entered(body):
	sprite.material.set_shader_parameter("speed_uniform", 5.0)
	$Timer.start();

func _on_timer_timeout():
	sprite.material.set_shader_parameter("speed_uniform", 1.0)
	
