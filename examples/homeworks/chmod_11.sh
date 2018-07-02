mkdir chmod_test
cd chmod_test
echo "echo hola" > chmod_file_test.sh
ls -l
cd ..
chmod -R +x chmod_test
ls -l | grep chmod_test
ls -l chmod_test

