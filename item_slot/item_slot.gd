extends PanelContainer
@onready var texture_rect:TextureRect = %TextureRect

func _ready():
	custom_minimum_size = Vector2(0.5, 0.5)  

func display(item:Item):
	texture_rect.texture = item.scene
