shader_type canvas_item;

void vertex() {
	if(VERTEX.y < 0.5) {
		VERTEX += vec2(0.2f, 0.0f) * cos(TIME);
	}
}

