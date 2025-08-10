extends Button

func _on_pressed() -> void:
	get_tree().quit()


	# change_scene_to_file("res://scenes/second_scene.tscn")


func _on_button_2_pressed():
	get_tree().change_scene_to_file("res://Main.tscn")

func _on_button_3_pressed():
	get_tree().change_scene_to_file("res://Main.tscn")
