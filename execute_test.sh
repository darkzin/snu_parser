#!/bin/bash

PWD=$(pwd)
TEST_FILES=$(pwd)/test/parser/*.mod

for file in $TEST_FILES; do
  reference/test_parser $file
  dot -Tpdf -o $file.ast.pdf $file.ast.dot
done

cp $(pwd)/test/parser/*.pdf ~/Documents/