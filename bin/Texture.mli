open Vec3
open Vec2

module Texture : sig
    type solid_texture_data = {
        colour : Vec3.vec3;
    }

    type checker_texture_data = {
        inv_scale : float;
        even : texture_T;
        odd : texture_T;
    }
    and texture_T = None
                   | Solid of solid_texture_data
                   | Checker of checker_texture_data

    val create_null : (unit -> texture_T)

    val create_solid : Vec3.vec3 -> texture_T

    val create_checker : float -> texture_T -> texture_T -> texture_T
    val create_checker_colour : float -> Vec3.vec3 -> Vec3.vec3 -> texture_T

    val get_colour : texture_T -> Vec2.vec2 -> Vec3.vec3 -> Vec3.vec3
end
