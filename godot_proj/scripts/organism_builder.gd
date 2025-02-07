class_name OrganismBuilder 

func GetOrganisms(organismJsonPath: String) -> Array[Organism]:
	var organismArray: Array[Organism] = [Organism.new(Color.html("#456753"), 3, 12)]

	var json_as_text = FileAccess.get_file_as_string(organismJsonPath)
	
	print(FileAccess.get_open_error())
	
	var json = JSON.new()
	var error = json.parse(json_as_text)
	
	var data_received
	if error == OK:
		data_received = json.data
		if typeof(data_received) != TYPE_ARRAY:
			print_debug("Unexpected json data")
			return organismArray
	else:
		print('The error type is: %s' % error)
		print("JSON Parse Error: ", json.get_error_message(), " in ", json_as_text, " at line ", json.get_error_line())
	
	for organismDef in data_received:
		var organism = Organism.new(organismDef.bodyColor, organismDef.bodySegmentCount, organismDef.bodyLegCount)
		organismArray.append(organism)
	
	return organismArray
