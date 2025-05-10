extends Node

var coins_collected = 0

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("return_to_main_menu"):
		get_tree().change_scene_to_file("res://main_menu.tscn")

func _on_coin_collected() -> void:
	$HUD/CoinsLabel.text = "Coins: " + str(Global.coins_collected)
