#include <iostream>

int add(int, int);

int main() {
  std::cout << add(1, 2);
  return 0;
}

int add(int num1, int num2) {
  return num1 + num2;
}
