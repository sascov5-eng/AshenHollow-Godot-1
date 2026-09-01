extends Node

var current_room := "approach"
var player_data := {
    "health": 5,
    "max_health": 5
}

func change_room(room_name:String):
    current_room = room_name
