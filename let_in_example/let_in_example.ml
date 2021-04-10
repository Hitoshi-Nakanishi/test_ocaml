(*
 ocamlopt -o ocamlprog let_in_example.ml
*)

open Printf

let multiply n list =
  let f x = n * x in
    List.map f list

let () = List.iter (printf "%d ") (multiply 2 [1; 2; 3])
