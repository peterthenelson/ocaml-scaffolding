(* This is basically the same as Fmt.Dump.option *)
let pp_option pp_v =
  let pp_some fmt x = Fmt.pf fmt "Some %a" pp_v x in
  Fmt.(option ~none:(any "None") pp_some)

(* This is basically the same as Fmt.Dump.pair *)
let pp_pair pp_a pp_b =
  let pp fmt v =
    let a, b = v in
    Fmt.pf fmt "(%a, %a)" pp_a a pp_b b in
  pp
