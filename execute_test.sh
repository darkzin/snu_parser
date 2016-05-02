#!/bin/bash

PWD=$(pwd)
TEST_FILES=$(pwd)/test/parser/*.mod
RESULT=$(pwd)/result
echo > $RESULT

for file in $TEST_FILES; do
  echo $file
  snuplc/test_parser $file > my_$(basename $file)
  reference/test_parser $file > refer_$(basename $file)
  echo $file >> $RESULT
  diff my_$(basename $file) refer_$(basename $file) >> $RESULT
  rm my_$(basename $file)
  rm refer_$(basename $file)
  #dot -Tpdf -o $file.ast.pdf $file.ast.dot
done

TEST_FILES=$(pwd)/test/parser/strange/*.mod
for file in $TEST_FILES; do
  echo $file
  snuplc/test_parser $file > my_$(basename $file)
  reference/test_parser $file > refer_$(basename $file)
  echo $file >> $RESULT
  diff my_$(basename $file) refer_$(basename $file) >> $RESULT
  rm my_$(basename $file)
  rm refer_$(basename $file)
  #dot -Tpdf -o $file.ast.pdf $file.ast.dot
done

TEST_FILES=$(pwd)/test/parser/hell/*.mod
for file in $TEST_FILES; do
  echo $file
  snuplc/test_parser $file > my_$(basename $file)
  reference/test_parser $file > refer_$(basename $file)
  echo $file >> $RESULT
  diff my_$(basename $file) refer_$(basename $file) >> $RESULT
  rm my_$(basename $file)
  rm refer_$(basename $file)
  #dot -Tpdf -o $file.ast.pdf $file.ast.dot
done

#cp $(pwd)/test/parser/*.pdf ~/Documents/