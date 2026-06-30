extends Control

@onready var money: Label = $Money
@onready var honey: Label = $Honey


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	updateText()

func updateText():
	money.text = "Money: " + str(GameManager.money)
	honey.text = "Honey: " + str(GameManager.honey)
