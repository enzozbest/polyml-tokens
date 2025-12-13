fun length [] = 0
  | length (_::xs) = 1 + length xs;

fun fst (x, _) = x;

val pair : 'a * 'b -> 'a = fst;

val nums = [1, 2, 3];

