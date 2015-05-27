#!/bin/bash
#vas2xyz.pl ts.vasp
in=$1
out="$1.xyz"
moviecombine.pl $in $in 12.xyz -13.529 0 0
moviecombine.pl 12.xyz $in 123.xyz 13.529 0 0
moviecombine.pl 123.xyz 123.xyz 123123.xyz -5.4116 9.3732 0
moviecombine.pl 123123.xyz 123.xyz final.xyz 5.4116 -9.3732 0
rm 12.xyz 123.xyz 123123.xyz
mv final.xyz $out