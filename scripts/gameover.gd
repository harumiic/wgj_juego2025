extends Control
@export var loss_sound: AudioStreamPlayer2D

func _ready():
	print("gameover")
	MusicPlayer.stop_music()
	loss_sound.play()
	print(loss_sound)
	
func _on_regresar():
	get_tree().change_scene_to_file("res://Main.tscn")
