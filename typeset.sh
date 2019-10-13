#!?bin/bash
function f1 {
	typeset x
x=7
y=8
}
x=1
y=2
echo "X is $x"
echo "Y is $y"
f1
echo "X is $x"
echo "Y is $y"

