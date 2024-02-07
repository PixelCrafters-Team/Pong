class_name InventoryDialog
extends PanelContainer

@export var slot_scene: PackedScene
@onready var grid_container: GridContainer = %GridContainer

func _process(delta):
	for child in grid_container.get_children():
		child.queue_free()
		
	for item in Inventory.get_items(1):
		var slot = slot_scene.instantiate()
		grid_container.add_child(slot)
		slot.display(item)
