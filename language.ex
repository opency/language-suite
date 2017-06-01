///////////////////////////////
cell syntax
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
cell - A influnced by: C, BLISS, ML, LISP
========
comments
========
    single line:
    multiline:      |* comment *|
=========
operators
=========
    or: (| x y)
    and: (& x y)
    bitwise or: (or x y)
    bitwise and: (and x y)
    less-than: (< x y)
    greater-than: (> x y)
    prefix inc: (++ x y) or (inc x y)
    postfix inc: (x y ++) or (x y inc)
    pre/post decrement: (-- x y) or (dec x y),  (x y --) or (dec x y)
    dereference operator: .x or (. x)
    add/sub/mult/div/mod: (+ x y) or (add x y),
                          (- x y) or (sub x y),
                          (* x y) or (mul x y),
                          (/ x y) or (div x y),
                          (\ x y) or (mod x y)

=====
types
=====
    int2    --(boolean)
    int8,16,32,64
    float64
    float128
    comlx8,16,32,64   --(complex)
    void        --Can be either a void pointer or a void non-pointer, which is a single word of raw data and used like BLISS variables.
    struct
    union?

    abstract
    cell

=========
data flow
=========
    if |(& (< x 2)  (< y 7))| = ::

    :;



====================
function declaration
====================
   |* function parameters go first, then return parameters. ^ declares a pointer. *|

   func{char: c, char^: d} => ||int: a, char: b|| = ::
        |* code body *|
    :;


===============
Defining a cell
===============
    cell: block  = ::
                int32: i = 0;
                loop|(< i 100)| = ::

                :;
    :;

=============
S-expressions
=============
S-expressions in cell are like S-expressions in lisp. cells can be defined

/////////////////////////////////////
cystil syntax
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
cystil - influenced by LISP, Ocaml, prolog
========
comments
========
    (-| multi-line comment -)
    --(single line comment)

=========
data flow
=========
    if x < y ->
        display "~%" ## x;
    else
        display "~%" ## y;;

====================
function declaration
====================
    (-| * before variables means non-typed. -)

    func * x y = [
        (-| code body -)
    ];;

    (-| ...or, having typed variables... -)

    func int: x; char: y = [
        (-| code body -)
    ]
=====
logic
=====
? is x y.
