extends Node2D


func _on_historia3_atras():
	get_tree().change_scene_to_file("res://scenes/Historia2.tscn")

func _on_historia3_adelante():
	get_tree().change_scene_to_file("res://scenes/Historia4.tscn")
