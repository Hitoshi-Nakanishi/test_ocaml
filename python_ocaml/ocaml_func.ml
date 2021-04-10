(*
ocamlfind ocamlopt -o ocamlprog -linkpkg -package yojson ocaml_func.ml
*)


let run channel =
  let j = Yojson.Basic.from_channel channel in
  let a = j |> Yojson.Basic.Util.member "a" |> Yojson.Basic.Util.to_float in
  let b = j |> Yojson.Basic.Util.member "b" |> Yojson.Basic.Util.to_float in
  let output = a *. b in
  Printf.printf "%f" output

let _ = run Stdlib.stdin