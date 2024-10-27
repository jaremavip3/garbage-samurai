extends Area2D

@onready var gameManager: Node = $"/root/game/game_manager"

func _on_body_entered(body: Node2D) -> void:
	if body is CharacterBody2D:
		gameManager.add_point()
		queue_free()
	else:
		#reset x and y coordinates if the trash is on an obstacle
		var rand_x = randi_range(-200, 200)
		var rand_y = randi_range(-200, 200)
		global_position = Vector2(rand_x, rand_y)
