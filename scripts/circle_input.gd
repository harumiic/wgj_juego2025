extends Sprite2D

func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
			if is_pixel_opaque(get_local_mouse_position()):
				get_parent().get_parent().get_parent().get_parent().set_clicked()
				print("Sprite Clicked")
