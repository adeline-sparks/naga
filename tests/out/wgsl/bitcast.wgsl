@compute @workgroup_size(1, 1, 1) 
fn main() {
    var i: i32 = 0;
    var i2_: vec2<i32>;
    var i3_: vec3<i32>;
    var i4_: vec4<i32>;
    var u2_: vec2<u32>;
    var u3_: vec3<u32>;
    var u4_: vec4<u32>;
    var f2_: vec2<f32>;
    var f3_: vec3<f32>;
    var f4_: vec4<f32>;
    var h2_: vec2<f32>;
    var h4_: vec4<f32>;

    i2_ = vec2<i32>(0);
    i3_ = vec3<i32>(0);
    i4_ = vec4<i32>(0);
    u2_ = vec2<u32>(0u);
    u3_ = vec3<u32>(0u);
    u4_ = vec4<u32>(0u);
    f2_ = vec2<f32>(0.0);
    f3_ = vec3<f32>(0.0);
    f4_ = vec4<f32>(0.0);
    h2_ = vec2<f32>(0.0);
    h4_ = vec4<f32>(0.0);
    let _e35 = i2_;
    u2_ = bitcast<vec2<u32>>(_e35);
    let _e37 = i3_;
    u3_ = bitcast<vec3<u32>>(_e37);
    let _e39 = i4_;
    u4_ = bitcast<vec4<u32>>(_e39);
    let _e41 = u2_;
    i2_ = bitcast<vec2<i32>>(_e41);
    let _e43 = u3_;
    i3_ = bitcast<vec3<i32>>(_e43);
    let _e45 = u4_;
    i4_ = bitcast<vec4<i32>>(_e45);
    let _e47 = i2_;
    f2_ = bitcast<vec2<f32>>(_e47);
    let _e49 = i3_;
    f3_ = bitcast<vec3<f32>>(_e49);
    let _e51 = i4_;
    f4_ = bitcast<vec4<f32>>(_e51);
    return;
}
