#!/bin/bash


#rm Foto-*.tif
for((i = 1; i <= 5000; i++))
do
   cp Foto.bmp Foto-$i.bmp
done
