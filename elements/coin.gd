extends Area2D

@onready var sprite: AnimatedSprite2D = $AnimatedSprite2D

func _ready() -> void:
	body_entered.connect(_on_body_entered)

func _on_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		Globals.add_point()
		sprite.play("open")
		await sprite.animation_finished
		call_deferred("queue_free")
