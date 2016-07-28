#! /bin/sh

for i in $(find . -iname "*.html"); do
  ORIG=${i}
  ORIG_PATH=$(echo ${ORIG} | cut -d '/' -f 2)
  NEW="./${ORIG_PATH}/index.html"

  mv ${ORIG} ${NEW}
done
