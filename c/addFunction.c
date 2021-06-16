#include <stdio.h>

int add(int, int);

int main() {
  printf("%i", add(1, 2));
  return 0;
}

int add(int sum1, int sum2) {
  return sum1 + sum2;
}
