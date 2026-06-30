extends StaticBody2D

@onready var interact_area: Area2D = $InteractArea
var player: Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func detectPlayer():
	if player == null and GameManager.player != null:
		player = GameManager.player

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	detectPlayer()
	checkForPlayer()

func checkForPlayer():
	if interact_area.overlaps_body(player):
		if GameManager.honey > 0 and Input.is_action_just_pressed("Interact"):
			sellHoney()


func sellHoney():
	GameManager.money += GameManager.honey
	GameManager.honey = 0
