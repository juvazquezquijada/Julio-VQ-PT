extends Area2D

@export var speed = 400

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var velocity = Vector2.ZERO
	
	
	if Input.is_action_pressed("move_up"):
		velocity.y -= 1
		print_debug("player moved up")
	if Input.is_action_pressed("move_down"):
		velocity.y += 1
		print_debug("player moved down")
	if Input.is_action_pressed("move_left"):
		velocity.x -= 1
		print_debug("player moved left")
	if Input.is_action_pressed("move_right"):
		velocity.x += 1
		print_debug("player moved right")
	
	if velocity.length() > 0:
		velocity = velocity.normalized() * speed
	
	position += velocity * delta
