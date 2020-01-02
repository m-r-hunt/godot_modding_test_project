extends Button

func _ready():
	connect("button_down", self, "on_click")

func on_click():
	$AudioStreamPlayer2D.play()
