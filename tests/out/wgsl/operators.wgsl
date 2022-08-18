struct Foo {
    a: vec4<f32>,
    b: i32,
}

let v_f32_one: vec4<f32> = vec4<f32>(1.0, 1.0, 1.0, 1.0);
let v_f32_zero: vec4<f32> = vec4<f32>(0.0, 0.0, 0.0, 0.0);
let v_f32_half: vec4<f32> = vec4<f32>(0.5, 0.5, 0.5, 0.5);
let v_f16_one: vec4<f32> = vec4<f32>(1.0, 1.0, 1.0, 1.0);
let v_i32_one: vec4<i32> = vec4<i32>(1, 1, 1, 1);
fn builtins() -> vec4<f32> {
    let s1_ = select(0, 1, true);
    let s2_ = select(vec4<f32>(0.0, 0.0, 0.0, 0.0), vec4<f32>(1.0, 1.0, 1.0, 1.0), true);
    let s3_ = select(vec4<f32>(1.0, 1.0, 1.0, 1.0), vec4<f32>(0.0, 0.0, 0.0, 0.0), vec4<bool>(false, false, false, false));
    let s4_ = select(vec4<f32>(1.0, 1.0, 1.0, 1.0), vec4<f32>(1.0, 1.0, 1.0, 1.0), vec4<bool>(false, false, false, false));
    let s5_ = select(vec4<f32>(1.0, 1.0, 1.0, 1.0), vec4<f32>(1.0, 1.0, 1.0, 1.0), vec4<bool>(false, false, false, false));
    let m1_ = mix(vec4<f32>(0.0, 0.0, 0.0, 0.0), vec4<f32>(1.0, 1.0, 1.0, 1.0), vec4<f32>(0.5, 0.5, 0.5, 0.5));
    let m2_ = mix(vec4<f32>(0.0, 0.0, 0.0, 0.0), vec4<f32>(1.0, 1.0, 1.0, 1.0), 0.10000000149011612);
    let b1_ = bitcast<f32>(vec4<i32>(1, 1, 1, 1).x);
    let b2_ = bitcast<vec4<f32>>(vec4<i32>(1, 1, 1, 1));
    let v_i32_zero = vec4<i32>(vec4<f32>(0.0, 0.0, 0.0, 0.0));
    return (((((vec4<f32>((vec4<i32>(s1_) + v_i32_zero)) + s2_) + m1_) + m2_) + vec4<f32>(b1_)) + b2_);
}

fn splat() -> vec4<f32> {
    let a_1 = (((vec2<f32>(1.0) + vec2<f32>(2.0)) - vec2<f32>(3.0)) / vec2<f32>(4.0));
    let b = (vec4<i32>(5) % vec4<i32>(2));
    return (a_1.xyxy + vec4<f32>(b));
}

fn bool_cast(x: vec3<f32>) -> vec3<f32> {
    let y = vec3<bool>(x);
    return vec3<f32>(y);
}

fn constructors() -> f32 {
    var foo: Foo;

    foo = Foo(vec4<f32>(1.0), 1);
    let mat2comp = mat2x2<f32>(vec2<f32>(1.0, 0.0), vec2<f32>(0.0, 1.0));
    let mat4comp = mat4x4<f32>(vec4<f32>(1.0, 0.0, 0.0, 0.0), vec4<f32>(0.0, 1.0, 0.0, 0.0), vec4<f32>(0.0, 0.0, 1.0, 0.0), vec4<f32>(0.0, 0.0, 0.0, 1.0));
    _ = vec2<u32>(0u);
    _ = mat2x2<f32>(vec2<f32>(0.0), vec2<f32>(0.0));
    _ = array<i32,4u>(0, 1, 2, 3);
    _ = bool(false);
    _ = i32(0);
    _ = u32(0u);
    _ = f32(0.0);
    _ = vec2<u32>(vec2<u32>(0u, 0u));
    _ = mat2x3<f32>(mat2x3<f32>(vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0)));
    _ = bitcast<vec2<u32>>(vec2<u32>(0u, 0u));
    _ = mat2x3<f32>(mat2x3<f32>(vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0)));
    let _e76 = foo.a.x;
    return _e76;
}

fn logical() {
    _ = !(true);
    _ = !(vec2<bool>(true));
    _ = (true || false);
    _ = (true && false);
    _ = (true | false);
    _ = (vec3<bool>(true) | vec3<bool>(false));
    _ = (true & false);
    _ = (vec4<bool>(true) & vec4<bool>(false));
}

fn arithmetic() {
    _ = -(vec2<i32>(1));
    _ = -(vec2<f32>(1.0));
    _ = (2 + 1);
    _ = (2u + 1u);
    _ = (2.0 + 1.0);
    _ = (vec2<i32>(2) + vec2<i32>(1));
    _ = (vec3<u32>(2u) + vec3<u32>(1u));
    _ = (vec4<f32>(2.0) + vec4<f32>(1.0));
    _ = (2 - 1);
    _ = (2u - 1u);
    _ = (2.0 - 1.0);
    _ = (vec2<i32>(2) - vec2<i32>(1));
    _ = (vec3<u32>(2u) - vec3<u32>(1u));
    _ = (vec4<f32>(2.0) - vec4<f32>(1.0));
    _ = (2 * 1);
    _ = (2u * 1u);
    _ = (2.0 * 1.0);
    _ = (vec2<i32>(2) * vec2<i32>(1));
    _ = (vec3<u32>(2u) * vec3<u32>(1u));
    _ = (vec4<f32>(2.0) * vec4<f32>(1.0));
    _ = (2 / 1);
    _ = (2u / 1u);
    _ = (2.0 / 1.0);
    _ = (vec2<i32>(2) / vec2<i32>(1));
    _ = (vec3<u32>(2u) / vec3<u32>(1u));
    _ = (vec4<f32>(2.0) / vec4<f32>(1.0));
    _ = (2 % 1);
    _ = (2u % 1u);
    _ = (2.0 % 1.0);
    _ = (vec2<i32>(2) % vec2<i32>(1));
    _ = (vec3<u32>(2u) % vec3<u32>(1u));
    _ = (vec4<f32>(2.0) % vec4<f32>(1.0));
    _ = (vec2<i32>(2) + vec2<i32>(1));
    _ = (vec2<i32>(2) + vec2<i32>(1));
    _ = (vec2<u32>(2u) + vec2<u32>(1u));
    _ = (vec2<u32>(2u) + vec2<u32>(1u));
    _ = (vec2<f32>(2.0) + vec2<f32>(1.0));
    _ = (vec2<f32>(2.0) + vec2<f32>(1.0));
    _ = (vec2<i32>(2) - vec2<i32>(1));
    _ = (vec2<i32>(2) - vec2<i32>(1));
    _ = (vec2<u32>(2u) - vec2<u32>(1u));
    _ = (vec2<u32>(2u) - vec2<u32>(1u));
    _ = (vec2<f32>(2.0) - vec2<f32>(1.0));
    _ = (vec2<f32>(2.0) - vec2<f32>(1.0));
    _ = (vec2<i32>(2) * 1);
    _ = (2 * vec2<i32>(1));
    _ = (vec2<u32>(2u) * 1u);
    _ = (2u * vec2<u32>(1u));
    _ = (vec2<f32>(2.0) * 1.0);
    _ = (2.0 * vec2<f32>(1.0));
    _ = (vec2<i32>(2) / vec2<i32>(1));
    _ = (vec2<i32>(2) / vec2<i32>(1));
    _ = (vec2<u32>(2u) / vec2<u32>(1u));
    _ = (vec2<u32>(2u) / vec2<u32>(1u));
    _ = (vec2<f32>(2.0) / vec2<f32>(1.0));
    _ = (vec2<f32>(2.0) / vec2<f32>(1.0));
    _ = (vec2<i32>(2) % vec2<i32>(1));
    _ = (vec2<i32>(2) % vec2<i32>(1));
    _ = (vec2<u32>(2u) % vec2<u32>(1u));
    _ = (vec2<u32>(2u) % vec2<u32>(1u));
    _ = (vec2<f32>(2.0) % vec2<f32>(1.0));
    _ = (vec2<f32>(2.0) % vec2<f32>(1.0));
    _ = (mat3x3<f32>(vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0)) + mat3x3<f32>(vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0)));
    _ = (mat3x3<f32>(vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0)) - mat3x3<f32>(vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0)));
    _ = (mat3x3<f32>(vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0)) * 1.0);
    _ = (2.0 * mat3x3<f32>(vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0)));
    _ = (mat4x3<f32>(vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0)) * vec4<f32>(1.0));
    _ = (vec3<f32>(2.0) * mat4x3<f32>(vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0)));
    _ = (mat4x3<f32>(vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0), vec3<f32>(0.0, 0.0, 0.0)) * mat3x4<f32>(vec4<f32>(0.0, 0.0, 0.0, 0.0), vec4<f32>(0.0, 0.0, 0.0, 0.0), vec4<f32>(0.0, 0.0, 0.0, 0.0)));
}

fn bit() {
    _ = ~(1);
    _ = ~(1u);
    _ = !(vec2<i32>(1));
    _ = !(vec3<u32>(1u));
    _ = (2 | 1);
    _ = (2u | 1u);
    _ = (vec2<i32>(2) | vec2<i32>(1));
    _ = (vec3<u32>(2u) | vec3<u32>(1u));
    _ = (2 & 1);
    _ = (2u & 1u);
    _ = (vec2<i32>(2) & vec2<i32>(1));
    _ = (vec3<u32>(2u) & vec3<u32>(1u));
    _ = (2 ^ 1);
    _ = (2u ^ 1u);
    _ = (vec2<i32>(2) ^ vec2<i32>(1));
    _ = (vec3<u32>(2u) ^ vec3<u32>(1u));
    _ = (2 << 1u);
    _ = (2u << 1u);
    _ = (vec2<i32>(2) << vec2<u32>(1u));
    _ = (vec3<u32>(2u) << vec3<u32>(1u));
    _ = (2 >> 1u);
    _ = (2u >> 1u);
    _ = (vec2<i32>(2) >> vec2<u32>(1u));
    _ = (vec3<u32>(2u) >> vec3<u32>(1u));
}

fn comparison() {
    _ = (2 == 1);
    _ = (2u == 1u);
    _ = (2.0 == 1.0);
    _ = (vec2<i32>(2) == vec2<i32>(1));
    _ = (vec3<u32>(2u) == vec3<u32>(1u));
    _ = (vec4<f32>(2.0) == vec4<f32>(1.0));
    _ = (2 != 1);
    _ = (2u != 1u);
    _ = (2.0 != 1.0);
    _ = (vec2<i32>(2) != vec2<i32>(1));
    _ = (vec3<u32>(2u) != vec3<u32>(1u));
    _ = (vec4<f32>(2.0) != vec4<f32>(1.0));
    _ = (2 < 1);
    _ = (2u < 1u);
    _ = (2.0 < 1.0);
    _ = (vec2<i32>(2) < vec2<i32>(1));
    _ = (vec3<u32>(2u) < vec3<u32>(1u));
    _ = (vec4<f32>(2.0) < vec4<f32>(1.0));
    _ = (2 <= 1);
    _ = (2u <= 1u);
    _ = (2.0 <= 1.0);
    _ = (vec2<i32>(2) <= vec2<i32>(1));
    _ = (vec3<u32>(2u) <= vec3<u32>(1u));
    _ = (vec4<f32>(2.0) <= vec4<f32>(1.0));
    _ = (2 > 1);
    _ = (2u > 1u);
    _ = (2.0 > 1.0);
    _ = (vec2<i32>(2) > vec2<i32>(1));
    _ = (vec3<u32>(2u) > vec3<u32>(1u));
    _ = (vec4<f32>(2.0) > vec4<f32>(1.0));
    _ = (2 >= 1);
    _ = (2u >= 1u);
    _ = (2.0 >= 1.0);
    _ = (vec2<i32>(2) >= vec2<i32>(1));
    _ = (vec3<u32>(2u) >= vec3<u32>(1u));
    _ = (vec4<f32>(2.0) >= vec4<f32>(1.0));
}

fn assignment() {
    var a: i32 = 1;
    var vec0_: vec3<i32> = vec3<i32>(0, 0, 0);

    let _e7 = a;
    a = (_e7 + 1);
    let _e10 = a;
    a = (_e10 - 1);
    let _e13 = a;
    let _e14 = a;
    a = (_e13 * _e14);
    let _e16 = a;
    let _e17 = a;
    a = (_e16 / _e17);
    let _e19 = a;
    a = (_e19 % 1);
    let _e22 = a;
    a = (_e22 & 0);
    let _e25 = a;
    a = (_e25 | 0);
    let _e28 = a;
    a = (_e28 ^ 0);
    let _e31 = a;
    a = (_e31 << 2u);
    let _e34 = a;
    a = (_e34 >> 1u);
    let _e37 = a;
    a = (_e37 + 1);
    let _e40 = a;
    a = (_e40 - 1);
    let _e47 = vec0_.y;
    vec0_.y = (_e47 + 1);
    let _e52 = vec0_.y;
    vec0_.y = (_e52 - 1);
    return;
}

@compute @workgroup_size(1, 1, 1) 
fn main() {
    let _e5 = builtins();
    let _e6 = splat();
    let _e8 = bool_cast(vec4<f32>(1.0, 1.0, 1.0, 1.0).xyz);
    let _e9 = constructors();
    logical();
    arithmetic();
    bit();
    comparison();
    assignment();
    return;
}
