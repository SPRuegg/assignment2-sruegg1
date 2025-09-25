let abs x =
  if x >= 0 then x
  else (-x)

(***********************************)
(* Part 1: Non-Recursive Functions *)
(***********************************)

let rev_tup (tup : 'a * 'b) =
  match tup with
  | (first, second) -> (second, first)

let rev_triple (tup : 'a * 'b * 'c) =
  match tup with
    (first, second, third) -> (third, second, first)

let is_odd x =
  x mod 2 <> 0

let is_older (date1: int * int * int) (date2: int * int * int) =
  date1 < date2

let to_us_format (date1: int * int * int) =
  match date1 with
    (first, second, third) -> (second, third, first)

(*******************************)
(* Part 2: Recursive Functions *)
(*******************************)

let rec pow x p = failwith "unimplemented"

let rec fac n = failwith "unimplemented"

(*****************)
(* Part 3: Lists *)
(*****************)

let rec get_nth ((idx:int), (lst: 'a list)) = failwith "unimplemented"

let larger lst1 lst2 = failwith "unimplemented"

let sum lst1 lst2 = failwith "unimplemented"
