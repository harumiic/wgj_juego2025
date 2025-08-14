extends Node2D

@export var fondo: TextureRect

@export var Paleta: TextureRect
@export var paleta_dedo: TextureRect
@export var paleta_dedo_sangre: TextureRect
@export var paleta_dedo_sangre_ojo: TextureRect

@export var pastel_dedo: TextureRect
@export var pastel_dedo_centro: TextureRect
@export var dedo:TextureRect

@export var leche_sangre_centro: TextureRect
@export var sangre:TextureRect

@export var cupcake_ojo_centro: TextureRect
@export var ojo:TextureRect

@export var flecha_derecha: TextureButton
@export var flecha_izquierda: TextureButton

@export var vidas: TextureRect
@export var tres_vidas : TextureRect
@export var dos_vidas : TextureRect
@export var una_vidas : TextureRect

@export var blur_background:TextureRect

@export var error_sound: AudioStreamPlayer2D
@export var success_sound : AudioStreamPlayer2D



var move_amount := 30 # píxeles por click

func _on_flecha_izquierda_pressed():
	print("on izquierda")
	fondo.global_position.x = min(fondo.global_position.x + move_amount,0)
	
func _on_flecha_derecha_pressed():
	var window_size = DisplayServer.window_get_size()
	print("on derecha")
	fondo.global_position.x = max(fondo.global_position.x - move_amount,-window_size.x)


var clicked := false
func _on_pastel_dedo(event: InputEvent):
	print("on pastel")
	if event is InputEventMouseButton and event.pressed:
		pastel_dedo_centro.visible = true
		vidas.visible = true
		flecha_derecha.visible = false
		flecha_izquierda.visible = false
		blur_background.visible=true
		var miss_count = 0

		await get_tree().create_timer(2.0).timeout
		
		#juego
		for i in range(1, 8):
			var circulo = get_node("UI/Control/pastel_dedo_centro/circulos%d" % i)
			var anim_player = circulo.get_node("AnimationPlayer")

			clicked = false
			circulo.visible = true
			anim_player.play("hacer_pequeño")

			await get_tree().create_timer(4).timeout

			if not clicked:
				miss_count += 1
				error_sound.play()

				if miss_count==1:
					tres_vidas.visible=false
				if miss_count==2:
					dos_vidas.visible=false
				if miss_count==3:
					una_vidas.visible=false
				print("Missed:", i)
			else:
				success_sound.play()

			circulo.visible = false
			
			#game over
			if miss_count >= 3:
				print("Stopped early: 3 misses")
				await get_tree().create_timer(4).timeout
				get_tree().change_scene_to_file("res://scenes/GameOver.tscn")
				return
				
		miss_count=0
		
		
		#victoria: objeto obtenido
		pastel_dedo_centro.visible=false
		paleta_dedo.visible=true
		dedo.visible=true
		await get_tree().create_timer(4).timeout
		get_tree().change_scene_to_file("res://scenes/intro_2.tscn")
		
func _on_leche_sangre(event: InputEvent):
	if event is InputEventMouseButton and event.pressed:
		leche_sangre_centro.visible = true
		vidas.visible = true
		flecha_derecha.visible = false
		flecha_izquierda.visible = false
		blur_background.visible=true
		var miss_count = 0

		await get_tree().create_timer(2.0).timeout
		
		#juego
		for i in range(1, 8):
			var circulo = get_node("UI/Control/leche_sangre_centro/circulos%d" % i)
			var anim_player = circulo.get_node("AnimationPlayer")

			clicked = false
			circulo.visible = true
			anim_player.play("hacer_pequeño")

			await get_tree().create_timer(4).timeout

			if not clicked:
				miss_count += 1
				error_sound.play()

				if miss_count==1:
					tres_vidas.visible=false
				if miss_count==2:
					dos_vidas.visible=false
				if miss_count==3:
					una_vidas.visible=false
				print("Missed:", i)
			else:
				success_sound.play()

			circulo.visible = false
			
			#game over
			if miss_count >= 3:
				print("Stopped early: 3 misses")
				await get_tree().create_timer(4).timeout
				get_tree().change_scene_to_file("res://scenes/GameOver.tscn")
				return
				
		miss_count=0
		
		
		#victoria: objeto obtenido
		leche_sangre_centro.visible=false
		paleta_dedo_sangre.visible=true
		sangre.visible=true
		await get_tree().create_timer(4).timeout
		get_tree().change_scene_to_file("res://scenes/intro_3.tscn")
		
		
func _on_cupcake_ojo(event: InputEvent):
	if event is InputEventMouseButton and event.pressed:
		cupcake_ojo_centro.visible = true
		vidas.visible = true
		flecha_derecha.visible = false
		flecha_izquierda.visible = false
		blur_background.visible=true
		var miss_count = 0

		await get_tree().create_timer(2.0).timeout
		
		#juego
		for i in range(1, 8):
			var circulo = get_node("UI/Control/cupcake_ojo_centro/circulos%d" % i)
			var anim_player = circulo.get_node("AnimationPlayer")

			clicked = false
			circulo.visible = true
			anim_player.play("hacer_pequeño")

			await get_tree().create_timer(4).timeout

			if not clicked:
				miss_count += 1
				error_sound.play()

				if miss_count==1:
					tres_vidas.visible=false
				if miss_count==2:
					dos_vidas.visible=false
				if miss_count==3:
					una_vidas.visible=false
				print("Missed:", i)
			else:
				success_sound.play()

			circulo.visible = false
			
			#game over
			if miss_count >= 3:
				print("Stopped early: 3 misses")
				await get_tree().create_timer(4).timeout
				get_tree().change_scene_to_file("res://scenes/GameOver.tscn")
				return
				
		miss_count=0
		
		
		#victoria: objeto obtenido
		cupcake_ojo_centro.visible=false
		paleta_dedo_sangre_ojo.visible=true
		ojo.visible=true
		await get_tree().create_timer(4).timeout
		get_tree().change_scene_to_file("res://scenes/final.tscn")

		

func set_clicked():
	clicked = true
		
