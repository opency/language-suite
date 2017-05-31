///////////////////////////////
cell syntax
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

========
comments
========
    single line:
    multiline:      |* comment *|
=========
operators
=========
    or: |( )
    and: &( )
    bitwise or: or( )
    bitwise and: and( )
    less-than: <( )
    greater-than: >( )
    prefix inc: ++( ) or inc( )
    postfix inc: ( )= or ( )inc
    decrement: --( ), ( )--

=====
types
=====
    int2    --(boolean)
    int8,16,32,64
    float64
    float128
    comlx8,16,32,64   --(complex)
    
    abstract
    cell


=========
data flow
=========
    if || &(<(x 2)  >(y 7)) || = (

    )



====================
function declaration
====================
   |* function parameters go first, then return parameters. ^ declares a pointer. *|


   func{char: c, char^: d} => ||int: a, char: b|| = (
        |* code body *|
    )


===============
Defining a cell
===============
    cell: block = ::
                int32: i = 0;
                loop|| i < 100 || = (

                )
    :;


/////////////////////////////////////
cystil syntax
\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\

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

function declaration

    (-| * before variables means non-typed. -)

    func * x y = [
        (-| code body -)
    ];;

    (-| ...or, having typed variables... -)

    func int: x; char: y = [
        (-| code body -)
    ]
