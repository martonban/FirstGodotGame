shader_type canvas_item;

uniform float speed_uniform = 1.0f;

float interpolation() {
	float q = -1.0f;
	q = mix(0.f, 1.0f, 0.f);
	return q;
	//return (-(asin(q) * asin(q)) + 2.0f) * 30.f;
}

void fragment() {
	COLOR = vec4(0.0f, interpolation(), 1.0f, 1.0f);
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

