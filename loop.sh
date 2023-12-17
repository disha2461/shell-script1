#!bin/bash

for i in $@
do
  yum remove $i -y
done

