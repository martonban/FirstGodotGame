extends Area2D

@onready var sprite = $Sprite2D


func _on_body_entered(body):
	sprite.material.set_shader_parameter("speed", 5)
