extends Node2D

func _on_button_pressed():
	get_tree().change_scene_to_file("res://scenes/second_scene.tscn")
	
func _on_ganaste_pressed():
	get_tree().change_scene_to_file("res://scenes/ganaste.tscn")

func _on_main_pressed():
	get_tree().change_scene_to_file("res://Main.tscn")
