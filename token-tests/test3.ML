datatype 'a option = NONE | SOME of 'a;

fun getOrDefault default opt =
    case opt of
        NONE => default
      | SOME x => x;

val result = 
    let
        val a = 10
        val b = 20
    in
        if a < b then a else b
    end;

val pi = 3.14159;
val word1 = 0w255;
val hex = 0xFF;

