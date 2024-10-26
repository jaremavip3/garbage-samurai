extends CharacterBody2D

const SPEED = 100.0

func _physics_process(delta: float) -> void:

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	var direction_ := Input.get_axis("ui_up", "ui_down")
	if direction_:
		velocity.y = direction_ * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)

	#diagonal direction speed control 
	if direction and direction_:
		velocity.x = direction * SPEED * 0.707
		velocity.y = direction_ * SPEED * 0.707
		$Label.text = "x:" + str(velocity.x).pad_decimals(2) + "y: " + str(velocity.y).pad_decimals(2)
	elif direction != 0: 
		velocity.x = direction * SPEED
		velocity.y = 0
	elif direction_ != 0:
		velocity.x = 0
		velocity.y = direction_ * SPEED

	move_and_slide()
