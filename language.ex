///////////////////////////////
cell syntax
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\
cell - A influnced by: C, BLISS, ML, LISP
========
comments
========
    single line:    ;?
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
    if | (& (< x 2)  (< y 7)) | [then]: [

    ]

    |* if modifiers:  .
                      .     *|

    |* Loops have loop modifiers within []: If blank, then a straight loop until conditions met, same as modifier until *|
    loop| ... | []: [

    ]

    |* Loop modifiers: inf
                       power
                       each
                       until    *|

    ;? infinite loop:
    loop [inf]: [
        ;? stuff....
    ]

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
                loop|(< i 100)| [until]: [

                ]
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
operators
=========

=========
data flow
=========
    if x < y; ->
        display "~%" ## x;
    else
        display "~%" ## y;;

====================
function declaration
====================
    (-| * before variables means non-typed. -)
    (-| func says it's defining a function. Function name goes at the end -)

    func * x y = [
        (-| code body -)
    ] foo;;

    (-| ...or, having typed variables... -)

    func int: x; char: y = [
        (-| code body -)
    ] foo;;
=====
logic
=====
? is x y.   --(x and y predicates, ? is returns whether it is true or false that x and y are logically equivalent)

//////
miscs.
\\\\\\

types: Having a mechanism which defines new types, rather than using objects to define a new type like in C++
