uniform float sampleRatio;

// External
vec4 sampleData(vec4 xyzw);

vec4 lerpItems(vec4 xyzw) {
  float x = xyzw.w * sampleRatio;
  float i = floor(x);
  float f = x - i;
    
  vec4 xyzw1 = vec4(xyzw.xyz, i);
  vec4 xyzw2 = vec4(xyzw.xyz, i + 1.0);
  
  vec4 a = sampleData(xyzw1);
  vec4 b = sampleData(xyzw2);

  return mix(a, b, f);
}
