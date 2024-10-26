extends CharacterBody2D

export var speed := 500
# Rotation speed in radians per second.
export var angular_speed := 5.0


func _physics_process(delta):
	# Add the gravity.
	var rotate_direction := Input.get_action_strength("rotate_right") - Input.get_action_strength("rotate_left")
		rotation += rotate_direction * angular_speed * delta
	# Below, we calculate the forward or backward move direction and directly multiply it to calculate a velocity.
	# `transform.y` stores the node's local axes, allowing us to move it in the direction it's currently facing.
	var velocity := (Input.get_action_strength("down") - Input.get_action_strength("up")) * transform.y * speed
		move_and_slide(velocity)
