extends CanvasLayer

var timer_inicio = 10
var timer = 0
var inimigo_asset = preload("res://inimigo_1_.tscn")
func _ready():
	timer = timer_inicio
	for i in range(5):
		spawn_inimigo()
func _process(delta):
	$VBoxContainer/level_nome.text = "Level" + str(Global.nivel)
	$BoxContainer/vida_nome.text = str(Global.player_vida) + "/" + str(Global.player_vida_max)
	$BoxContainer2/CONTADOR.text = str(int(timer))
	$BoxContainer2/wave_nome.text = "ONDA" + " " + str(int(Global.wave))
	$coin.text = "R$" + str(Global.coin)
	if Global.inimigos <= 2:
		for i in range(5):
			spawn_inimigo()
	if Global.iniciar_jogo == true:
		start_timer(delta)
	if Global.reset_timer == true:
		reset_timer()
		Global.reset_timer = false
	if timer <= 0:
		Global.visible_cartas = true
		Global.iniciar_jogo = false
		Global.pausar_tudo = true
func reset_timer():
	timer_inicio += 5
	timer = timer_inicio
	Global.wave += 1 
	Global.inimigos = 0
	
func start_timer(D):
	timer -= 1 * D
	
func spawn_inimigo():
	var ini = inimigo_asset.instantiate()
	
	var x = randi_range(196,1048)
	var y = randi_range(92,570)
	
	ini.global_position = Vector2(x,y)
	get_tree().get_root().add_child(ini)
