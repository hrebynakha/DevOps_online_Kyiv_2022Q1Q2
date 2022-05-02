#!/bin/bash
echo hello, my name is $0

while (($#))
do
    echo You gave me $1
    shift
done