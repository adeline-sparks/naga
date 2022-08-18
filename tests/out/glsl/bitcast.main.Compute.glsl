#version 310 es

precision highp float;
precision highp int;

layout(local_size_x = 1, local_size_y = 1, local_size_z = 1) in;


void main() {
    int i = 0;
    ivec2 i2_ = ivec2(0);
    ivec3 i3_ = ivec3(0);
    ivec4 i4_ = ivec4(0);
    uvec2 u2_ = uvec2(0u);
    uvec3 u3_ = uvec3(0u);
    uvec4 u4_ = uvec4(0u);
    vec2 f2_ = vec2(0.0);
    vec3 f3_ = vec3(0.0);
    vec4 f4_ = vec4(0.0);
    vec2 h2_ = vec2(0.0);
    vec4 h4_ = vec4(0.0);
    i2_ = ivec2(0);
    i3_ = ivec3(0);
    i4_ = ivec4(0);
    u2_ = uvec2(0u);
    u3_ = uvec3(0u);
    u4_ = uvec4(0u);
    f2_ = vec2(0.0);
    f3_ = vec3(0.0);
    f4_ = vec4(0.0);
    h2_ = vec2(0.0);
    h4_ = vec4(0.0);
    ivec2 _e35 = i2_;
    u2_ = uvec2(_e35);
    ivec3 _e37 = i3_;
    u3_ = uvec3(_e37);
    ivec4 _e39 = i4_;
    u4_ = uvec4(_e39);
    uvec2 _e41 = u2_;
    i2_ = ivec2(_e41);
    uvec3 _e43 = u3_;
    i3_ = ivec3(_e43);
    uvec4 _e45 = u4_;
    i4_ = ivec4(_e45);
    ivec2 _e47 = i2_;
    f2_ = intBitsToFloat(_e47);
    ivec3 _e49 = i3_;
    f3_ = intBitsToFloat(_e49);
    ivec4 _e51 = i4_;
    f4_ = intBitsToFloat(_e51);
    return;
}

