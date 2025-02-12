extends Node
#const Date = preload("res://scripts/organism_builder.gd")

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var builder = OrganismBuilder.new();
	var organisms = builder.GetOrganisms("./data/test_organisms.json");
	
	var generator = OrganismGenerator.new()
	generator.generate_random(2)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


# build_leg(float leg_size){
#	private _maxLegSize
#	private _minLegSize
#	return leg
#}

# build_segments(int segment_count, int leg_count){
#	return segment_array
#}

# build_leg(float leg_length){
#	return leg
#}
