extends AudioStreamPlayer2D

func _ready():
	play() 

func start_music():
	if not playing:
		play()

func stop_music():
	print("Stopping music…")
	stop()
