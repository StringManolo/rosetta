<?php
function calculator() {
  $getNumbers = function() {
    $num1 = readline("First number: ");
    $num2 = readline("Second number: ");
    return [$num1, $num2];
  };

  $addition = function($num1, $num2) {
    return $num1 + $num2;
  };

  $substraction = function($num1, $num2) {
    return $num1 - $num2;
  };

  $multiplication = function($num1, $num2) {
    return $num1 * $num2;
  };

  $division = function($num1, $num2) {
    return $num1 / $num2;
  };

  $selectedOption = readline("


PHP Calculator:

  1 - Addition
  2 - Substraction
  3 - Multiplication
  4 - Division

  0 - Exit

Select an option: ");

  switch($selectedOption) {
    case 1:
      [$num1, $num2] = $getNumbers();
      $res = $addition($num1, $num2);
      echo "Result: $res";
    break;

    case 2:
      [$num1, $num2] = $getNumbers();
      $res = $substraction($num1, $num2);
      echo "Result: $res";
    break;

    case 3:
      [$num1, $num2] = $getNumbers();
      $res = $multiplication($num1, $num2);
      echo "Result: $res";
    break;

    case 4:
      [$num1, $num2] = $getNumbers();
      $res = $division($num1, $num2);
      echo "Result: $res";
    break;

    case 0:
      return 1;

    default:
      echo "Please, write a number from 0 to 4 and press enter";

  }

}

while(calculator() != 1);
