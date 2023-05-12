#!/bin/bash
echo "Start working"

echo -n "First step:Enter your notebook name: "
read name
echo "The current notebook is $name"
echo ""

echo "Second step:Change working directory"
cd ./$name
echo -n "Now the working directory is  " 
pwd
echo ""

echo "Third step:Build the notebook"
gitbook build
echo ""

echo "Forth step:Start add files"
git add .
echo ""

echo -n "Fifth step:Enter the commit message:"
read message
echo "The changes are $message"
echo ""

echo "Sixth step:Commit changes"
git commit -m "$message"
echo ""

echo "Seventh step:Git push changes"
git push origin master
echo ""

echo "Eighth step:Copy _book's files to Temporary storage "
cp -rf ./_book/* ../TemporaryStorage
echo ""

echo "Ninth step:Checkout gh-pages"
git checkout gh-pages
echo ""

echo "Tenth step:Delete all files"
rm -rf * 
echo ""

echo "Eleventh step:Copy Temporary storage files"
cp -rf ../TemporaryStorage/* ./
echo ""

echo "Twelfth step:Delete Temporary storage files"
rm -rf ../TemporaryStorage/*
echo ""

echo "Thirteenth step:Repeat the submission step"
git add .
git commit -m "$message"
git push origin gh-pages
echo ""

echo "Fourteen step:Switch to master branch"
git checkout master
echo ""

echo "End step:Everything is done,have a nice day!"

# rm -rf `ls | grep -v ".git 删除当前文件夹下不含.git字样的文件"
# rm -rf * 删除当前文件夹下所有文件但是不会删除隐藏文件夹
# cp -rf * ../demo 将当前文件夹下的所有文件复制到demo文件夹下`