cell syntax

logical operators
    or: |
    and: &
    bitwise or: or
    bitwise and: and

data flow

    if x < 2 & y > 7


function declaration

   |* function parameters go first, then return parameters. ^ declares a pointer. *|


   func{char: c, char^: d} => ||int: a, char: b|| = (
        |* code body *|
    )

Defining a cell

    cell = ::
                int32: i = 0;
                loop|| i < 100 || = (

                )
        :;

cystil syntax

data flow

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
