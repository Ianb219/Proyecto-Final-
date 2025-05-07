extends Area2D
var control = false

func _on_body_entered(body: Node2D) -> void:
	control = true
	
func _on_body_exited(body: Node2D) -> void:
	control = false
