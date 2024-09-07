extends CanvasLayer

var timer_inicio = 10
var timer = 0

var wave = 1
func _ready():
	timer = timer_inicio
func _process(delta):
	$VBoxContainer/level_nome.text = "Level" + str(Global.nivel)
	$BoxContainer/vida_nome.text = str(Global.player_vida) + "/" + str(Global.player_vida_max)
	$BoxContainer2/CONTADOR.text = str(int(timer))
	$BoxContainer2/wave_nome.text = "ONDA" + " " + str(int(wave))
	$coin.text = "R$" + str(Global.coin)
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
	wave += 1 
	
func start_timer(D):
	timer -= 1 * D
