#!/bin/bash
#grouping in bash
a=1
(
a=2
)
echo $a

#print 1

b=1
{
b=2
}
echo $b
#print 2

