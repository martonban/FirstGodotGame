shader_type canvas_item;

uniform float speed_uniform = 1.0f;

float interpolation() {
	float t = clamp(TIME, 0.0f, 1.0f);
	float q = mix(-1.0f, 1.0f, t);
	return (-(asin(q) * asin(q)) + 2.0f) * 30.f;
}

void vertex() {
	float speed = 0.f;
	if(speed_uniform == 1.0f) {
		speed = 3.0f;
	}
	if(speed_uniform == 5.0f) {
		speed = interpolation();
	}
	
	//if(VERTEX.y < 0.6) {
	VERTEX += vec2((0.2f * speed), 0.0f) * cos(TIME * speed);
	//}
}

