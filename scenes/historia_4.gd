extends Node2D

func _on_historia4_atras():
	get_tree().change_scene_to_file("res://scenes/Historia3.tscn")
	
func _on_historia4_adelante():
	get_tree().change_scene_to_file("res://scenes/Historia5.tscn")
