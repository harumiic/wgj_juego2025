extends Node2D

@export var fondo: TextureRect
@export var pastel_dedo: TextureRect
@export var pastel_dedo_centro: TextureRect

var move_amount := 30 # píxeles por click
var left_limit := 0
var right_limit := 1152

func _on_flecha_izquierda_pressed():
	fondo.global_position.x = min(fondo.global_position.x + move_amount,0)
	
func _on_flecha_derecha_pressed():
	fondo.global_position.x = max(fondo.global_position.x - move_amount,-1152)

func _on_pastel_dedo(event:InputEvent):
	if event is InputEventMouseButton and event.pressed:
		pastel_dedo_centro.visible=true
	
