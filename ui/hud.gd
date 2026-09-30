extends  CanvasLayer

@onready var label: Label = $"Label"
@onready var timer_label: Label = $"TimerLabel"

func _ready() -> void:
	Events.points_changed.connect(_on_points_changed)
	label.text = "Points: 0"
	timer_label.text = "Left: 10"

func _on_points_changed(points: int) -> void:
	label.text = "Points: " + str(points)

func set_time(seconds: int) -> void:
	timer_label.text = "Left: " + str(seconds)
