//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

#define PI 3.14159265

void main()
{
	//float x_mod = sqrt(v_vTexcoord.x)/sqrt(2);
	//float x_mod = -(cos(PI * v_vTexcoord.x) - 1) / 2;
	//if (v_vTexcoord.x > 0.5) x_mod = 1-(sqrt(1-v_vTexcoord.x)/sqrt(2));
	//x_mod = v_vTexcoord.x;
	
	//float x_mod = (sqrt(v_vTexcoord.x)/sqrt(2))*2-0.5;
	//if (v_vTexcoord.x > 0.5) x_mod = (1-(sqrt(1-v_vTexcoord.x)/sqrt(2)))*2-0.5;
	float offset = (v_vTexcoord.x-0.5)*2;
	float angle = asin(offset)+PI/2;
	float x_mod = angle/PI;
	
	float adj = cos(angle-PI/2);
	
	//float y_mod = pow((v_vTexcoord.x*2)-1,2);
	float factor = -1+(2*v_vTexcoord.y);
	float scale = (1-adj)*1/(PI*2)-0.1875;
	float y_mod = v_vTexcoord.y+(scale*factor);
	
	vec4 colour = v_vColour * texture2D( gm_BaseTexture, vec2(x_mod,y_mod));
    gl_FragColor = colour;
}
