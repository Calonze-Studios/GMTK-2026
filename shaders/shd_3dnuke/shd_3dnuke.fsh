//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    float offset = (v_vTexcoord.x - 0.5) * 2.0;
    float angle = asin(offset) + (3.1415926535 / 2.0);
    float x_mod = angle / 3.1415926535;
    
    float adj = cos(angle - 3.1415926535 / 2.0);
    
    float factor = -1.0 + (2.0 * v_vTexcoord.y);
    float scale = (1.0 - adj) * 1.0 / (3.1415926535 * 2.0) - 0.1875;
    float y_mod = v_vTexcoord.y + (scale * factor);
    
    vec4 colour = v_vColour * texture2D( gm_BaseTexture, vec2(x_mod,y_mod));
    
    //vec4 colour = v_vColour * texture2D( gm_BaseTexture, vec2(v_vTexcoord.x,v_vTexcoord.y));
    gl_FragColor = colour;
}