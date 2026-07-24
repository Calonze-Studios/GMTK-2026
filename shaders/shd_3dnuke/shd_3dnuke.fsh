//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

#define PI 3.14159265

void main()
{
	//float x_mod = sqrt(v_vTexcoord.x)/sqrt(2);
	////float x_mod = -(cos(PI * v_vTexcoord.x) - 1) / 2;
	//if (v_vTexcoord.x > 0.5) x_mod = 1-(sqrt(1-v_vTexcoord.x)/sqrt(2));
	
	//float y_mod = pow((v_vTexcoord.x*2)-1,2);
	//y_mod *= -1+(2*v_vTexcoord.y);
	//y_mod *= 0.05;
	
	//vec4 colour = v_vColour * texture2D( gm_BaseTexture, vec2(x_mod,v_vTexcoord.y+y_mod));
    //gl_FragColor = colour;
}
