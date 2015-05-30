
extends PopupPanel

# member variables here

func _on_resume_game_button_pressed():
	get_tree().set_pause(false)
	get_node(".").hide()
	
func _on_back_to_menu_button_pressed():
	get_tree().change_scene("res://main_menu.scn")
	
func _ready():
	get_node("resume_game_button").connect("pressed",self,"_on_resume_game_button_pressed")
	get_node("back_to_menu_button").connect("pressed",self,"_on_back_to_menu_button_pressed")
	set_process(true)

func _process(delta):
	#pausing the game
	if Input.is_action_pressed("pause_game"):
		get_tree().set_pause(true)
		get_node(".").show()

