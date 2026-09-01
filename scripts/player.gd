extends CharacterBody2D

const SPEED := 220.0
const JUMP_FORCE := -420.0
const GRAVITY := 1100.0

var facing := 1
var attacking := false

func _physics_process(delta):
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	var direction = Input.get_axis("ui_left", "ui_right")
	velocity.x = direction * SPEED

	if direction != 0:
		facing = sign(direction)

	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_FORCE

	if Input.is_action_just_pressed("attack"):
		attack()

	move_and_slide()

func attack():
	if attacking:
		return
	attacking = true
	# Animation hook for sword swing
	await get_tree().create_timer(0.25).timeout
	attacking = false
