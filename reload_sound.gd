extends Button

func _ready():
	connect("button_down", self, "on_click")

func on_click():
	var file = File.new()
	file.open("test_song.wav", File.READ)
	var bytes = file.get_buffer(file.get_len())
	var stream = AudioStreamSample.new()
	stream.data = bytes
	# Note these settings will need to be correct otherwise you'll get garbage sound.
	# Will need to be documented for modders.
	stream.format = AudioStreamSample.FORMAT_16_BITS
	stream.stereo = true
	$Button/AudioStreamPlayer2D.stream = stream
