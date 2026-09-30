extends CanvasLayer

func _ready() -> void:
	$WinButton.pressed.connect(_on_menu_pressed)

func _on_menu_pressed() -> void:
	Globals.reset()
	get_tree().change_scene_to_file("res://ui/main_menu.tscn")
