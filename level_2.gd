extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print("level 1 ready")
	for coin in $Coins.get_children():
		coin.coin_collected.connect(_on_coin_collected)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_bottom_area_body_entered(body: Node2D) -> void:
	if body == $Player:
		get_tree().change_scene_to_file("res://game_over.tscn")

func _on_coin_collected() -> void:
	$HUD/CoinsLabel.text = "Coins: " + str(Global.coins_collected)

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body == $Player:
		get_tree().change_scene_to_file("res://win.tscn")
