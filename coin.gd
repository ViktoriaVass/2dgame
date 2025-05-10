extends Area2D

signal coin_collected

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		print(Global.coins_collected)
		Global.coins_collected += 1
		coin_collected.emit()
		$PickupSound.play()
		hide()

func _on_pickup_sound_finished() -> void:
	queue_free()
