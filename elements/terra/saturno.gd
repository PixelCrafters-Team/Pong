extends Node2D

@export var item:Item

func _ready():
	var sprite = Sprite2D.new()  
	sprite.texture = item.scene
	sprite.scale = Vector2(0.1, 0.1) 
	$Area2D.add_child(sprite)

func new_saturno():
	var ball = get_parent().get_node("Ball")
	ball.on_item_ball_collision_left(item, 2)
