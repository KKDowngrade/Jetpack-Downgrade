extends ParallaxLayer
func _process(delta):
	scroll_offset.x -= 300    * delta
