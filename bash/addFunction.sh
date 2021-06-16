add() {
  local -n result=$3;
  result=$(($1 + $2));
}

add 1 2 res;
echo $res;

