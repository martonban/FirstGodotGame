shader_type canvas_item;

uniform float speed = 1.0f;

void vertex() {
	if(VERTEX.y < 0.5) {
		VERTEX += vec2((0.2f * speed), 0.0f) * cos(TIME * speed);
	}
}

