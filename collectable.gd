extends Area2D
# Called when the node enters the scene tree for the first time.
var CanGetPoint : bool = true
@onready var timer: Timer = $"../Timer"
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_body_entered(body: Node2D) -> void:
	if CanGetPoint == true:
		GlobalScore.GlobalScoreYarn += 1
		GlobalScore.CollectableAmount.emit()
		CanGetPoint = false
		timer.start()
		await timer.timeout
		CanGetPoint = true
