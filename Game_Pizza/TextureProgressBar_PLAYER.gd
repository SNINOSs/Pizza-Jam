extends TextureProgressBar


func _ready():
	max_value = Global.player_vida_max


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	max_value = Global.player_vida_max
	value = Global.player_vida
	
