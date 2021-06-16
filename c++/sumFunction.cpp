#include <iostream>

int sum(int, int);

int main() {
  std::cout << sum(1, 2);
  return 0;
}

int sum(int num1, int num2) {
  return num1 + num2;
}
