extends Node2D

@export var fondo: TextureRect
@export var Paleta: TextureRect
@export var pastel_dedo: TextureRect
@export var pastel_dedo_centro: TextureRect
@export var vidas: TextureRect
@export var flecha_derecha: TextureButton
@export var flecha_izquierda: TextureButton

var move_amount := 30 # píxeles por click
var left_limit := 0
var right_limit := 1152

func _on_flecha_izquierda_pressed():
	fondo.global_position.x = min(fondo.global_position.x + move_amount,0)
	
func _on_flecha_derecha_pressed():
	fondo.global_position.x = max(fondo.global_position.x - move_amount,-1152)


#func _on_paleta_gui_input(event: InputEvent) -> void: 
	#if event is InputEventMouseButton and event.pressed:
		#print ($UI/Control/Paleta)
		#$UI/Control/Paleta.position = Vector2(44, 84)
		#$UI/Control/Paleta.rotation = 0
	
var paleta_movida := false  # para saber si ya fue movida

func _on_paleta_gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton and event.pressed:
		if not paleta_movida:
		
			print("Paleta movida")
			$UI/Control/Background/Paleta.position = Vector2(44, 84) 
			$UI/Control/Background/Paleta.rotation = 0
			paleta_movida = true
		else:
			print("Paleta regresada a posición inicial")
			$UI/Control/Background/Paleta.position = Vector2(-47, 304)
			$UI/Control/Background/Paleta.rotation = 31
			print($UI/Control/Background/Paleta.position)
			print($UI/Control/Background/Paleta.rotation)
			# $UI/Control/Paleta.size = Vector2(441, 415)
			paleta_movida = false


# func _on_paleta_gui_input(event: InputEvent) -> void:
	# if event is InputEventMouseButton and event.pressed:
		# $UI/Control/Paleta.size *= Vector2(1.2, 1.2) 


func _on_control_gui_input(event: InputEvent) -> void:
	pass # Replace with function body.

func _on_pastel_dedo(event:InputEvent):
	if event is InputEventMouseButton and event.pressed:
		pastel_dedo_centro.visible=true
		vidas.visible=true
		flecha_derecha.visible=false
		flecha_izquierda.visible=false
		
