sum() {
  local -n result=$3
  result=`expr $1 + $2`;
}

sum 1 2 example;
echo $example;

