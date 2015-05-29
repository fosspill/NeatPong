
extends PopupPanel

# member variables here
var pause_menu=get_root().get_node("pause_screen_popup")

func _on_resume_game_button_pressed():
	get_tree().set_pause(false)
	pause_menu.free()
	
func _on_back_to_menu_button_pressed():
	get_tree().change_scene("res://main_menu.scn")
	
func _ready():
	get_node("resume_game_button").connect("pressed",self,"_on_resume_game_button_pressed")
	get_node("back_to_menu_button").connect("pressed",self,"_on_back_to_menu_button_pressed")


