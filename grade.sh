CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
rm -rf grading-area

mkdir grading-area

git clone $1 student-submission
cp TestListExamples.java grading-area
cp -r lib grading-area
echo 'Finished cloning'

if [ -e student-submission/ListExamples.java ]
then  
    echo 'File Exists' 
else 
    echo 'File Not Found'
fi

cp student-submission/ListExamples.java grading-area

# Draw a picture/take notes on the directory structure that's set up after
# getting to this point
cd grading-area
# Then, add here code to compile and run, and do any post-processing of the
# tests
javac -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar *.java
java -cp .:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar org.junit.runner.JUnitCore TestListExamples
