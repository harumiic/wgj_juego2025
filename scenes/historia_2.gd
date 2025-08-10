extends Node2D


func _on_historia2_atras():
	get_tree().change_scene_to_file("res://scenes/Historia.tscn")
	
func _on_historia2_adelante():
	get_tree().change_scene_to_file("res://scenes/Historia3.tscn")
