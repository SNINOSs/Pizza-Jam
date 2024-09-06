extends CanvasLayer

var timer_inicio = 60
var timer = 0

var wave = 1
func _ready():
	timer = timer_inicio
func _process(delta):
	$level_numero.text = str(Global.nivel)
	$vida_value.text = str(Global.player_vida)
	$vida_valuemax.text = str(Global.player_vida_max)
	$CONTADOR.text = str(int(timer))
	$wave_numero.text = str(int(wave))
	if Global.iniciar_jogo == true:
		start_timer(delta)
	else:
		Global.iniciar_jogo = false
		reset_timer()
		
	if timer <= 0:
		print("gf")
		wave += 1 
		Global.iniciar_jogo = false
		reset_timer()
		Global.iniciar_jogo = true
func reset_timer():
	timer = timer_inicio
	
func start_timer(D):
	timer -= 1 * D
