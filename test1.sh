
    #!/bin/bash
    # Basic arithmetic using let
   
    let a=5+4
    echo $a # 9
    let "a = 5 + 4"
    echo $a # 9
    let a++
    echo $a # 10
    let "a = 4 * 5"
    echo $a # 20
    let "a = $1 + 30"
    echo $a # 30 + first command line argument
    b=$(( $2 + 4 ))
echo $b # 12
(( b++ ))
echo $b # 17
(( b += 3 ))
echo $b # 20
a=$(( 4 * 5 ))
echo $a # 20
expr "5+6"
expr 5 + 4
c="hello world"
echo ${#c}


if [ $3 -gt 100 ]
then
echo Hey that\'s a large number.
pwd
fi
date

echo $0
echo $#
