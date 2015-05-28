
extends Panel

# member variables here
var join
var host

func _on_single_button_pressed():
	get_tree().change_scene("res://pong.scn")
func _on_local_button_pressed():
	get_tree().change_scene("res://pong2p/local.scn")
func _on_online_button_pressed():
	host=Button.new()
	host.set_name("host_button")
	host.set_text("Host Match")
	host.set_pos(Vector2(0,170))
	add_child(host)
	join=Button.new()
	join.set_name("join_button")
	join.set_text("Join Match")
	join.set_pos(Vector2(80,170))
	add_child(join)

func _ready():
	get_node("single_button").connect("pressed",self,"_on_single_button_pressed")
	get_node("local_button").connect("pressed",self,"_on_local_button_pressed")
	get_node("online_button").connect("pressed",self,"_on_online_button_pressed")
	
