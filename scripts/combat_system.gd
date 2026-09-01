extends Node

signal damage_dealt(target, amount)

var attack_damage := 1

func deal_damage(target):
    if target.has_method("take_damage"):
        target.take_damage(attack_damage)
        damage_dealt.emit(target, attack_damage)
