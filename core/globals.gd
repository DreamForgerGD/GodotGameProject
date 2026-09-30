extends Node

var points := 0
var total := 4

func add_point():
	points += 1
	Events.points_changed.emit(points)
	if points >= total:
		print("WOW!!")
		Events.win.emit()

func reset():
	points = 0
	Events.points_changed.emit(points)
