#!/bin/bash

for file in `ls *.g[!v]?`; do
gerbv $file -o $file.png --dpi=300x300 -a --export=png
done

mv *.png ./PNGs
