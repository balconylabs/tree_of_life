class_name OrganismGenerator


func generate_random(count: int, json_path: String = "res://data/generated_organisms.json"):
	var organisms: Array[Dictionary] = []
	
	for i in range(count):
		var body_color: Color = _random_color()
		var body_segment_count: int = randi() % 1000 + 1
		var body_leg_count: int = randi() % 1000 + 1
		
		var organism_dict = {
			"bodyColor": "#" + body_color.to_html(false),
			"bodySegmentCount": body_segment_count,
			"bodyLegCount": body_leg_count,
		}
	
		organisms.append(organism_dict)
	
	print(JSON.stringify(organisms, "\t"))
	
	var file = FileAccess.open(json_path, FileAccess.WRITE)
	file.store_string(JSON.stringify(organisms, "\t"))
	
		
	#var json: String = "[\n"
	#
	#for organism in organisms:
		#json += "\t{\n"
		#
		#json += "\t\t\"bodyColor\": \"#" + organism.bod 
		#
		#json += "\t}\n"
		#
 
	
	
func _random_color() -> Color:
	var r = randi() % 256 / 255.0
	var g = randi() % 256 / 255.0
	var b = randi() % 256 / 255.0
	var a = 1.0  # Optional: Set alpha to 1 for fully opaque
	return Color(r, g, b, a)
