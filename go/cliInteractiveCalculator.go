package main

import (
  "fmt"
  "bufio"
  "os"
  "strconv"
)

func main() {
  for ;calculator() != 1; {
    /* pass */
  }
}

func getNumbers() (int, int) {
  scanner := bufio.NewScanner(os.Stdin);
  fmt.Print("First number: ");
  scanner.Scan();
  num1, err1 := strconv.Atoi(scanner.Text());
  fmt.Print("Second number: ");
  scanner.Scan();
  num2, err2 := strconv.Atoi(scanner.Text());

  if err1 != nil || err2 != nil {
    os.Exit(1);
  }
  return num1, num2;
}

func addition(num1, num2 int) (int) {
  return num1 + num2;
}

func substraction(num1, num2 int) (int) {
  return num1 - num2;
}

func multiplication(num1, num2 int) (int) {
  return num1 * num2;
}

func division(num1, num2 int) (int) {
  return num1 / num2;
}

func calculator() (int) {
  fmt.Print(`

Go Calculator:

  1 - Addition
  2 - Substraction
  3 - Multiplication
  4 - Division

  0 - Exit

Select an option: `);

  scanner := bufio.NewScanner(os.Stdin);
  scanner.Scan();
  selectedOption, err := strconv.Atoi(scanner.Text());
  if err != nil {
    os.Exit(1);
  }

  switch selectedOption {
    case 1:
      num1, num2 := getNumbers();
      fmt.Print("Result: ", addition(num1, num2));

    case 2:
      num1, num2 := getNumbers();
      fmt.Print("Result: ", substraction(num1, num2));

    case 3:
      num1, num2 := getNumbers();
      fmt.Print("Result: ", multiplication(num1, num2));

    case 4:
      num1, num2 := getNumbers();
      fmt.Print("Result: ", division(num1, num2));

    case 0:
      return 1;

    default:
      fmt.Print("Please, write a number from 0 to 4 and press enter");
  }

  return 0;
}

