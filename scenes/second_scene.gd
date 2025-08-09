extends Node2D

@onready var cam = $Camera2D
var move_amount := 200 # píxeles por click
var left_limit := 0
var right_limit := 3840 - 1080  # ancho fondo - ancho pantalla

func _on_flecha_izquierda_pressed():
	cam.position.x = max(cam.position.x - move_amount, left_limit)

func _on_flecha_derecha_pressed():
	cam.position.x = min(cam.position.x + move_amount, right_limit)
