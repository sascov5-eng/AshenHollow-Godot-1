extends Node

@export var damage: int = 1
@export var attack_cooldown: float = 0.35
var can_attack := true

func attack():
	if not can_attack:
		return
	can_attack = false
	await get_tree().create_timer(attack_cooldown).timeout
	can_attack = true
