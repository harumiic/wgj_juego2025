extends Control

func _on_button_pressed():
	# Change scene to second_scene.tscn
	get_tree().change_scene_to_file("res://scenes/second_scene.tscn")

func _on_play_pressed():
	get_tree().change_scene_to_file("res://scenes/Gameplay.tscn")

func _on_button_game():
	get_tree().change_scene_to_file("res://scenes/second_scene.tscn")

func _on_quit_pressed():
	get_tree().change_scene_to_file("res://scenes/Quit.tscn")

func _on_button_quit_game():
	get_tree().quit()
		
#func _on_credits_pressed():
	#print('hola')
	#get_tree().change_scene_to_file("res://scenes/Creditos.tscn")


func _on_credits_2_pressed():
	get_tree().change_scene_to_file("res://scenes/Creditos.tscn")
