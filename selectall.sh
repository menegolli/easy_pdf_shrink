#!/bin/sh
foo="_shrink.pdf"
for file in *.pdf
do
  name=$(echo $file | rev | cut -d"." -f2  | rev)
  newName="$name$foo"
  /bin/bash shrinkpdf.sh "$file" "$newName"
done
