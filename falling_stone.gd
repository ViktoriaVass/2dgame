extends RigidBody2D

@onready var screen_notifier = $VisibleOnScreenNotifier2D

func _ready():
	gravity_scale = 0
	screen_notifier.screen_entered.connect(_on_screen_entered)

func _on_screen_entered():
	screen_notifier.screen_entered.disconnect(_on_screen_entered)
	start_fall()

func start_fall():
	await get_tree().create_timer(randf_range(0.0, 2.0)).timeout
	gravity_scale = 0.5

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		get_tree().change_scene_to_file("res://game_over.tscn")
