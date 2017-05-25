cell syntax

function declaration

   |* function parameters go first, then return parameters. ^ declares a pointer. *|    


    func{char: c, char^: d} => <int: a, char: b> = (
        |* code body *|
    )

    

cystil syntax

*function declaration

    (-| * before variables means non-typed. -)

    func * x y = [
        (-| code body -)
    ];;

    (-| ...or, having typed variables... -)    

    func int: x; char: y = [
        (-| code body -)
    ]
