extends CanvasLayer

var scene_to_change : String
var changing_scene : bool = false

@onready var fades = $Fades

func fade_in(_path, _change_Scene = false):
	fades.play("fade_in")
	scene_to_change = _path
	changing_scene = _change_Scene

func fade_out():
	fades.play("fade_out")



func _on_fades_animation_finished(anim_name):
	if anim_name == "fade_in" and changing_scene:
		fade_out()
		get_tree().change_scene_to_file(scene_to_change)
	
	if anim_name == "fade_out" and changing_scene:
		changing_scene = false
	
