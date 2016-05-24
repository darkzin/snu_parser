#!/bin/bash

PWD=$(pwd)
RESULT=$(pwd)/result

cd $PWD/snuplc/
make
cd ..
echo > $RESULT

TEST_FILES=$(pwd)/test/tac/*.mod
for file in $TEST_FILES; do
  echo $file
  snuplc/test_ir $file > my_$(basename $file)
  reference/4_test_ir $file > refer_$(basename $file)
  echo $file >> $RESULT
  diff my_$(basename $file) refer_$(basename $file) >> $RESULT
  rm my_$(basename $file)
  rm refer_$(basename $file)
done
