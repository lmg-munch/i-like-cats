extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	GlobalScore.CollectableAmount.connect(ScoreSignal)
	
func ScoreSignal():
	text=str(GlobalScore.GlobalScoreYarn)
