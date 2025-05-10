extends Node2D

func _ready() -> void:
	print("main menu ready") 

func _process(delta: float) -> void:
	pass

func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://level_1.tscn")
