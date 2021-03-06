(* This file is part of Luv, released under the MIT license. See LICENSE.md for
   details, or visit https://github.com/aantron/luv/blob/master/LICENSE.md. *)



(** Metrics.

    See {{:http://docs.libuv.org/en/v1.x/metrics.html} {i Metrics operations}}
    in libuv. *)

val idle_time : Loop.t -> Unsigned.UInt64.t
(** Retrieves the amount of time the loop has been blocked waiting in the
    kernel.

    Binds {{:http://docs.libuv.org/en/v1.x/metrics.html#c.uv_metrics_idle_time}
    [uv_metrics_idle_time]}. *)
