extends CharacterBody2D

enum {PARADO,CORRIDA}
var estado_mov = PARADO
@onready var anim = $Anim as AnimatedSprite2D
var vel =  100
var dir_x = 1
var dir_y= 1






# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _physics_process(delta):
	if Global.pausar_tudo == false:
		match estado_mov:
			PARADO:
				estado_parado()
			CORRIDA:
				estado_corrida()
		Global.position_player = position
		if Input.is_action_just_pressed("a"):
			dir_x = -1
			anim.flip_h = true
		if Input.is_action_just_pressed("d"):
			dir_x = 1
			anim.flip_h = false
		if Input.is_action_just_pressed("s"):
			dir_y = 1
		if Input.is_action_just_pressed("w"):
			dir_y = -1
			
		if Input.is_action_pressed("a") or Input.is_action_pressed("d"):
			velocity.x = vel * dir_x 
		else :
			velocity.x = 0
		if Input.is_action_pressed("w") or Input.is_action_pressed("s"):
			velocity.y = vel * dir_y 
		else :
			velocity.y = 0
		
		if Global.player_vida <= 0:
			print("morreuie")
			queue_free()
			get_tree().reload_current_scene()
		
	move_and_slide()
func estado_parado():
	anim.play("idle")
	if velocity.x > 0 or velocity.x < 0 or velocity.y > 0 or velocity.y < 0:
		estado_mov = CORRIDA
		
func estado_corrida():
	anim.play("run")
	if velocity.x == 0 and velocity.y == 0:
		estado_mov = PARADO
		



func _on_hitbox_area_entered(area):
	if area.is_in_group("inimigo"):
		Global.player_vida -= 1
