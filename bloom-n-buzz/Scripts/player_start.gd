extends Node2D

const PLAYER = preload("uid://bwa5nhffbnipb")

var player: Node2D = PLAYER.instantiate()

func _ready() -> void:
	player.position = position
	
	get_parent().add_child.call_deferred(player)
	
