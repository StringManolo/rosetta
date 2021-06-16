package main

import (
  "fmt"
)

func main() {
  fmt.Print(add(1, 2));
}

func add(num1, num2 int) (int) {
  return num1 + num2;
}
