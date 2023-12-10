extends Node

var coins = 0

func _unhandled_input(event):
	if event.is_action_pressed("quit"):
		get_tree().quit()

func add_coins():
	print(str(coins))
	coins += 1
	var Coins = get_node_or_null("/root/Game/UI/HUD/CoinCount")
	if Coins != null:
		Coins.text = "Coins: " + str(coins)

var death_zone = 7450
var passed= ["true","false","false","false","false","false"]
var gamefile="res://level1.tscn"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func upd_gf(file):
	gamefile=file
