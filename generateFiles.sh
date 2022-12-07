#!/usr/bin/env bash

echo 'Generating files...'

# function to generate random string

function randomString() {
  xxd -l 6 -c 32 -p < /dev/random
}

# generate 100 files with random names and random content

touch ./testIndexes.txt
mkdir ./testFiles
cd ./testFiles



for i in {1..100}
do
  randomName=$(randomString)
  echo $randomName > $randomName.txt
  # append the name of the file to the testIndexes.txt
  echo $randomName.txt >> ../testIndexes.txt
done

