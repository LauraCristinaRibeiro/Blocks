extends Area2D

@export var speed = 200

func _physics_process(delta):
	global_position.y -= speed * delta

func _on_body_entered(body: Node2D) -> void:
	body.queue_free()#excluindo o bloco na cena
	GameManager._add_points(1)
	queue_free()#exclui a bala da cena
