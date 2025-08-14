extends Control
@export var win_sound: AudioStreamPlayer2D


func _ready():
	MusicPlayer.stop_music()
	win_sound.play()
