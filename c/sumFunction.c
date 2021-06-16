#include <stdio.h>

int sum(int, int);

int main() {
  printf("%i", sum(1, 2));
  return 0;
}

int sum(int sum1, int sum2) {
  return sum1 + sum2;
}
