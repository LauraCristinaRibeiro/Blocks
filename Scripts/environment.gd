extends Node2D
@onready var timer_reset: Timer = $TimerReset


func _on_death_zone_body_entered(body):
	if body.name == "Ball":
		if GameManager.lives > 1:
			GameManager.lives -= 1
			body.reset_position()
		else:
			GameManager._update_record() #atualiza o recorde
			GameManager._reset_points()
			GameManager._reset_lives()
			timer_reset.start()	
			body.queue_free() #se não for a bola, o objeto é deletado

func _on_timer_reset_timeout():
	GameManager.started = false
	get_tree().reload_current_scene()


	
