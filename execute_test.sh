#!/bin/bash

PWD=$(pwd)
RESULT=$(pwd)/result

cd $PWD/snuplc/
make
cd ..
echo > $RESULT

TEST_FILES=$(pwd)/test/codegen/*.mod
for file in $TEST_FILES; do
  echo $file
  snuplc/snuplc $file # > my_$(basename $file)
  cat $file.s >> my_$(basename $file)
  reference/snuplc $file # > refer_$(basename $file)
  cat $file.s >> refer_$(basename $file)
  echo $file >> $RESULT
  diff my_$(basename $file) refer_$(basename $file) >> $RESULT
  rm my_$(basename $file)
  rm refer_$(basename $file)
done
