module Make
    (S : Irmin.S with type branch = string)
    (DK : Datakit_S.CLIENT) : sig
  val run : DK.t -> (Datakit_github.Repo.t * S.Repo.t) list -> 'a Lwt.t
end
