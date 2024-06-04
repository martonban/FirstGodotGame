shader_type canvas_item;

uniform float speed_uniform = 1.0f;


float interpoaltion() {
	if(sin(TIME) != PI/2.0) {
		return cos(TIME) * .5f;
	}
}

void vertex() {
	float speed = 0.f;
	if(speed_uniform == 1.0f) {
		speed = 2.0f;
	}
	if(speed_uniform == 5.0f) {
		speed = interpoaltion() * 5.f;
	}
	
	
	if(VERTEX.y < 0.5) {
		VERTEX += vec2((0.2f * speed), 0.0f) * cos(TIME * speed);
	}
}

