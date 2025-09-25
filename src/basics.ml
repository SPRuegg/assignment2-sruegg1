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
  | (first, second, third) -> (third, second, first)

let is_odd x =
  x mod 2 <> 0

let is_older (date1: int * int * int) (date2: int * int * int) =
  date1 < date2

let to_us_format (date1: int * int * int) =
  match date1 with
  | (first, second, third) -> (second, third, first)

(*******************************)
(* Part 2: Recursive Functions *)
(*******************************)

let rec pow x p =
  if p = 0
  then 1
  else x * pow x (p-1)

let rec fac n =
  if n = 0
  then 1
  else n * fac (n-1)

(*****************)
(* Part 3: Lists *)
(*****************)

let rec get_nth ((idx:int), (lst: 'a list)) =
  if lst = [] then
    failwith "Index is out of bounds"
  else if idx = 0 then
    List.hd lst
  else
    get_nth (idx-1, List.tl lst)

let larger lst1 lst2 =
  let len1 = List.length lst1 in
  let len2 = List.length lst2 in
  if len1 > len2 then
    lst1
  else if len2 > len1 then
    lst2
  else
    []

let sum lst1 lst2 =
  let rec sum_list lst =
    match lst with
    | [] -> 0
    | head :: tail -> head + sum_list tail
  in
  (sum_list lst1) + (sum_list lst2)

