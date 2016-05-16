#!/bin/bash

PWD=$(pwd)
RESULT=$(pwd)/result

cd $PWD/snuplc/
make
cd ..
echo > $RESULT

TEST_FILES=$(pwd)/test/scanner/*.mod
for file in $TEST_FILES; do
  echo $file
  snuplc/test_parser $file > my_$(basename $file)
  reference/3_test_parser.relaxed $file > refer_$(basename $file)
  echo $file >> $RESULT
  diff my_$(basename $file) refer_$(basename $file) >> $RESULT
  rm my_$(basename $file)
  rm refer_$(basename $file)
done

TEST_FILES=$(pwd)/test/parser/*.mod
for file in $TEST_FILES; do
  echo $file
  snuplc/test_parser $file > my_$(basename $file)
  reference/3_test_parser.relaxed $file > refer_$(basename $file)
  echo $file >> $RESULT
  diff my_$(basename $file) refer_$(basename $file) >> $RESULT
  rm my_$(basename $file)
  rm refer_$(basename $file)
done

TEST_FILES=$(pwd)/test/parser/strange/*.mod
for file in $TEST_FILES; do
  echo $file
  snuplc/test_parser $file > my_$(basename $file)
  reference/3_test_parser.relaxed $file > refer_$(basename $file)
  echo $file >> $RESULT
  diff my_$(basename $file) refer_$(basename $file) >> $RESULT
  rm my_$(basename $file)
  rm refer_$(basename $file)
done

TEST_FILES=$(pwd)/test/parser/hell/*.mod
for file in $TEST_FILES; do
  echo $file
  snuplc/test_parser $file > my_$(basename $file)
  reference/3_test_parser.relaxed $file > refer_$(basename $file)
  echo $file >> $RESULT
  diff my_$(basename $file) refer_$(basename $file) >> $RESULT
  rm my_$(basename $file)
  rm refer_$(basename $file)
done

TEST_FILES=$(pwd)/test/semanal/*.mod
for file in $TEST_FILES; do
  echo $file
  snuplc/test_parser $file > my_$(basename $file)
  reference/3_test_parser.relaxed $file > refer_$(basename $file)
  echo $file >> $RESULT
  diff my_$(basename $file) refer_$(basename $file) >> $RESULT
  rm my_$(basename $file)
  rm refer_$(basename $file)
done

TEST_FILES=$(pwd)/test/semanal/semantics/*.mod
for file in $TEST_FILES; do
  echo $file
  snuplc/test_parser $file > my_$(basename $file)
  reference/3_test_parser.relaxed $file > refer_$(basename $file)
  echo $file >> $RESULT
  diff my_$(basename $file) refer_$(basename $file) >> $RESULT
  rm my_$(basename $file)
  rm refer_$(basename $file)
done

TEST_FILES=$(pwd)/test/semanal/arrays/*.mod
for file in $TEST_FILES; do
  echo $file
  snuplc/test_parser $file > my_$(basename $file)
  reference/3_test_parser.relaxed $file > refer_$(basename $file)
  echo $file >> $RESULT
  diff my_$(basename $file) refer_$(basename $file) >> $RESULT
  rm my_$(basename $file)
  rm refer_$(basename $file)
done

TEST_FILES=$(pwd)/test/semanal/int_const/*.mod
for file in $TEST_FILES; do
  echo $file
  snuplc/test_parser $file > my_$(basename $file)
  reference/3_test_parser.relaxed $file > refer_$(basename $file)
  echo $file >> $RESULT
  diff my_$(basename $file) refer_$(basename $file) >> $RESULT
  rm my_$(basename $file)
  rm refer_$(basename $file)
done
