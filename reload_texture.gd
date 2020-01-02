extends Button

func _ready():
	connect("button_down", self, "on_click")

func on_click():
	var file = File.new()
	file.open("test_texture.png", File.READ)
	var bytes = file.get_buffer(file.get_len())
	var img = Image.new()
	img.load_png_from_buffer(bytes)
	var tx = ImageTexture.new()
	tx.create_from_image(img)
	$Sprite.texture = tx
