(*
ocamlfind ocamlopt -o ocamlprog -linkpkg -package yojson ocaml_return_dict.ml
*)


let run channel =
    let j = Yojson.Basic.from_channel channel in
    let a = j |> Yojson.Basic.Util.member "a" |> Yojson.Basic.Util.to_float in
    let b = j |> Yojson.Basic.Util.member "b" |> Yojson.Basic.Util.to_float in
    let output = a *. b in
    output

let save_as_dict output =
    output

let _ = run Stdlib.stdin |> save_as_dict |> Printf.printf "%f"
