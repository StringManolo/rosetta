sum() {
  local -n result=$3;
  result=`expr $1 + $2`;
}

sum 1 2 res;
echo $res;

