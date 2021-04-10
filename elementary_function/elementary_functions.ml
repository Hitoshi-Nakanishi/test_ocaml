(*
 ocamlopt -o ocamlprog elementary_functions.ml
*)

let square x = x * x;;

Printf.printf "%d\n" (square 10);;

let rec fact x = if x <= 1 then 1 else x * fact (x - 1);;

Printf.printf "%d\n" (fact 5);;
