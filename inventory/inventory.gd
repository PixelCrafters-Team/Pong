class_name Inventory

static var _content1: Array[Item] = []
static var _content2: Array[Item] = []

func add_item(item:Item, id):
	if id == 1:
		_content1.append(item)
	else: 
		_content2.append(item)
		
	if _content1.size() >= 10 or _content2.size() >= 10:
		_content1 = []
		_content2 = []
	
func remove_item(item:Item, id):
	if id == 1:
		_content1.erase(item)
	else: 
		_content2.erase(item)
	
static func get_items(id) -> Array[Item]:
	if id == 1:
		return _content1
	else:
		return _content2
		
	

