extends CharacterBody2D

@export var speed : int = 800
@export var jumpspeed : int = 600
@export var gravity : int = 1000
func _physics_process(_delta: float) -> void:
	if Input.is_action_just_pressed("Jump") and is_on_floor():
		velocity.y -= jumpspeed
	velocity.y += gravity * _delta
	velocity.x = Input.get_axis("Walk_Left", "Walk_Right") * speed
	move_and_slide()
