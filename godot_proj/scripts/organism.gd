class_name Organism extends Node2D

@export var bodyColor = Color.html("#888888")
@export var bodySegmentCount: int
@export var bodyLegCount: int

func _init(bodyColor: Color, bodySegmentCount: int, bodyLegCount: int):
	self.bodyColor = bodyColor
	self.bodySegmentCount = bodySegmentCount
	self.bodyLegCount = bodyLegCount
	self._constructBody()

func _constructBody():
	print("constructing body. Color: %s, Segment Count: %s, Leg Count: %s" % [self.bodyColor, self.bodySegmentCount, self.bodyLegCount])
#func _ready():
	#pass
#
#func _process(delta):
	#pass
	
