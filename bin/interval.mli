module Interval : sig
    type interval_T = {
        mutable min: float;
        mutable max: float
    }

    val create_null : (unit -> interval_T)

    val create : float -> float -> interval_T

    val zero_infinite : interval_T

    val expand : interval_T -> interval_T -> interval_T

    val contained : interval_T -> float -> bool

    val clamp : interval_T -> float -> float

    val to_string : interval_T -> string
end
