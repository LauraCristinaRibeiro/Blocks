extends Node

var started: bool = false
var lives: int = 3
var points: int = 0
var record: int = 0

signal on_powerup #sinal para ativamento do power up.

#Função adicionar pontos
func _add_points(value):
	points += value

#função resetar os pontos
func _reset_points():
	points = 0
	
#função atualizar o recorde
func _update_record():
	if points > record:
		record = points
		
#função de resetar vidas
func _reset_lives():
	lives = 3
