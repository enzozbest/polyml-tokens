(* Full module system and advanced features *)

signature STACK =
sig
    type 'a stack
    val empty : 'a stack
    val push : 'a * 'a stack -> 'a stack
    val pop : 'a stack -> ('a * 'a stack) option
end;

structure ListStack :> STACK =
struct
    type 'a stack = 'a list
    val empty = []
    fun push (x, s) = x :: s
    fun pop [] = NONE
      | pop (x::xs) = SOME (x, xs)
end;

exception Empty of string;

fun hd [] = raise Empty "hd"
  | hd (x::_) = x;

local
    val secret = 42
in
    fun getSecret () = secret
end;

infixr 5 ++;
fun xs ++ ys = xs @ ys;

val combined = [1,2] ++ [3,4];

fun factorial n =
    let
        val result = ref 1
        val i = ref n
    in
        while !i > 0 do (
            result := !result * !i;
            i := !i - 1
        );
        !result
    end;

type point = {x: real, y: real};
val origin : point = {x = 0.0, y = 0.0};
val xCoord = #x origin;

val _ = print "Done!\n";
