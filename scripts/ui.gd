extends Control

func _ready():
	# Connect the TextureButton's pressed signal
	$MarginContainer/HBoxContainer/Button.pressed.connect(_on_button_pressed)

func _on_button_pressed():
	# Change scene to second_scene.tscn
	get_tree().change_scene_to_file("res://scenes/second_scene.tscn")
