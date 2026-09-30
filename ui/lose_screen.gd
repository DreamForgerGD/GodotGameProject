extends CanvasLayer

func _ready() -> void:
	$LoseButton.pressed.connect(_on_win_pressed)
	
func _on_win_pressed() -> void:
	Globals.reset()
	get_tree().change_scene_to_file("res://ui/main_menu.tscn")
