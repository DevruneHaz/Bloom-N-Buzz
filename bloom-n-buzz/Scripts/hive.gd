extends StaticBody2D

@onready var honey_timer: Timer = $HoneyTimer
@onready var honey_sprite: Sprite2D = $HoneySprite
@onready var interact_area: Area2D = $InteractArea

var player: Node2D

var hasHoney: bool = false

func _ready() -> void:
	honey_sprite.visible = false

func detectPlayer():
	if player == null and GameManager.player != null:
		player = GameManager.player

func _process(_delta: float) -> void:
	detectPlayer()
	
	if hasHoney:
		collectHoney()


func _on_honey_timer_timeout() -> void:
	honey_sprite.visible = true
	hasHoney = true

func collectHoney():
	if interact_area.overlaps_body(player) and Input.is_action_just_pressed("Interact"):
		honey_sprite.visible = false
		honey_timer.start()
		GameManager.honey += 1
		hasHoney = false
