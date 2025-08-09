extends Node2D

@export var fondo: TextureRect
var move_amount := 30 # píxeles por click
var left_limit := 0
var right_limit := 3840 - 1080  

func _on_flecha_izquierda_pressed():
	fondo.global_position.x = max(fondo.global_position.x + move_amount, left_limit)
	
func _on_flecha_derecha_pressed():
	fondo.global_position.x = min(fondo.global_position.x - move_amount, left_limit)
