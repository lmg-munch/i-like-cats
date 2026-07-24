extends CharacterBody2D
@export var speed : int = 500
@export var jumpspeed : int = 450
@export var gravity : int = 400

func _physics_process(_delta: float) -> void:
	if Input.is_action_just_pressed("Jump"):
		velocity.y -= jumpspeed

	velocity.y += gravity * _delta
	velocity.x = Input.get_axis("Walk_Left", "Walk_Right") * speed
	if velocity.x < 0:
		$AnimatedSprite2D.flip_h = true
	else:
		$AnimatedSprite2D.flip_h = false
	move_and_slide()
