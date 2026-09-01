extends CharacterBody2D

@export var health: int = 3
@export var speed: float = 40.0

func take_damage(amount: int):
	health -= amount
	if health <= 0:
		queue_free()
