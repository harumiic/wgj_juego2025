extends Control

func _on_button_flecha():
	get_tree().change_scene_to_file("res://scenes/Historia2.tscn")
	

func _on_button_casita():
	get_tree().change_scene_to_file("res://Main.tscn")

func _on_button_gameplay():
	get_tree().change_scene_to_file("res://scenes/Gameplay.tscn")
