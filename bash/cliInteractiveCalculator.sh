calculator() {
  getNumbers() {
    local -n _num1=$1;
    local -n _num2=$2;
    read -p 'First number: ' _num1;
    read -p 'Second number: ' _num2;
  }

  addition() {
    local -n _result=$3;
    _result=$(($1 + $2));
  }

  substraction() {
    local -n _result=$3;
    _result=$(($1 - $2));
  }

  multiplication() {
    local -n _result=$3;
    _result=$(($1 * $2));
  }

  division() {
    local -n _result=$3;
    _result=$(($1 / $2));
  }

  read -p '

Bash Calculator:

  1 - Addition
  2 - Substraction
  3 - Multiplication
  4 - Division

  0 - Exit

Select an option: ' selectedOption;

  local -n returnVal=$1;
  case $selectedOption in 
    1 )
      getNumbers num1 num2;
echo "Adding $num1 + $num2";
      addition num1 num2 result;
      echo "Result: $result";
      ;;

    2 ) 
      getNumbers num1 num2;
      substraction num1 num2 result;
      echo "Result: $result";
      ;;

    3 ) 
      getNumbers num1 num2;
      multiplication num1 num2 result;
      echo "Result: $result";
      ;;

    4 )
      getNumbers num1 num2;
      division num1 num2 result;
      echo "Result: $result";
      ;;

    0 )
      returnVal=1;;

    * )
      echo "Please, write a number from 0 to 4 and press enter";;
  esac
}

exitCalc=0;
while [ $exitCalc -ne 1 ]; do
  calculator exitCalc;
done;

