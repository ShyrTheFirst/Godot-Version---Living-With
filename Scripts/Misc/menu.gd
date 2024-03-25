extends Control

func _ready():
	pass

func _on_start_pressed():
	TransitionScreen.fade_in("res://Scenes/Misc/test.tscn", true)


func _on_load_pressed():
	pass # Replace with function body.


func _on_exit_pressed():
	get_tree().quit()
