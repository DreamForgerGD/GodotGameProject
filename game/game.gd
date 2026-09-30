extends Node2D

const WIN_SCENE := "res://ui/win_screen.tscn"
const LOSE_SCENE := "res://ui/lose_screen.tscn"
const TIME_LIMIT := 10.0

var time_left := TIME_LIMIT
var game_active := true

@onready var hud: CanvasLayer = $Hud

func _process(delta: float) -> void:
	if not game_active:
		return
	time_left -= delta
	if time_left <= 0:
		time_left = 0
		game_active = false
		Events.lose.emit()
		return
	hud.set_time(int(time_left))

func _on_win() -> void:
	game_active = false
	get_tree().call_deferred("change_scene_to_file", WIN_SCENE)

func _on_lose() -> void:
	game_active = false
	get_tree().call_deferred("change_scene_to_file", LOSE_SCENE)

func _ready() -> void:
	Events.win.connect(_on_win)
	Events.lose.connect(_on_lose)
