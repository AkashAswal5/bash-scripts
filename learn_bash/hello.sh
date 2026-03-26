#!/bin/bash 
echo "Hello, Bash!"

echo "Hello,";  echo " Bash!";

# Assign a value to a variables
 name="test123"
 echo "Hello, $name!" # to access the value of the variable, prefix it with $ sign: $variable_name

# fuction & local + global variables

test_funcation(){
    local local_var="I am Local";
    echo $local_var

    qwert="Dvorak"
    echo $qwert    

}

test_funcation # calling a function


#Concatenation
greeting="Hello"
name=" Agni" 
echo "$greeting$name"

num1=3;
num2=4
sum=$((num1+num2))
echo "$sum"
echo $sum

    # string TEST!@#
greeting="G00D, Morning!"
full_greeting="$greeting, $name!"
echo $full_greeting


#Numbers
num1=4;
num2=16
sum=$((num1+num2))
diff=$((num2-num1))
prod=$((num1*num2))
quot=$((num2/num1))

echo "Sum: $sum, Difference: $diff, product: $prod, Quotient: $quot"

 
    # ARRAY
mahina=("chet" "beshak" "jath" "asead" "sawan" "bhado" "ashish" "kartki" "aghan" "paush" "mangshir" "faghon")
for test in "${mahina[@]}"; do
    echo $test
done

echo "second array test example"
# second array for loop 
test123=("asd" "qwert" "keybaord" "dvorak" "typewritter")

for tyyyy in ${test123[@]}; do
    echo $tyyyy
done

# while loop test
 i=5 
 while ((i >=0)); do
     echo $i
     ((i--))
done



