class_name InventoryDialog2
extends PanelContainer

@export var slot_scene2: PackedScene
@onready var grid_container2: GridContainer = %GridContainer2

func _process(delta):
	for child in grid_container2.get_children():
		child.queue_free()
		
	for item in Inventory.get_items(2):
		var slot = slot_scene2.instantiate()
		grid_container2.add_child(slot)
		slot.display(item)

