open Shape
open Ray
open HitRecord
open Vec3

module Object : sig
    type object_T = {
        shape: Shape.shape_T
    }

    val create : Shape.shape_T -> object_T

    val check_collision : object_T -> Ray.ray -> HitRecord.hit

    val scatter_ray : object_T -> Ray.ray -> HitRecord.hit_record -> (Vec3.vec3 * Ray.ray) option
end
