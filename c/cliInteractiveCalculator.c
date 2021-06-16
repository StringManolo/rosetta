#include <stdio.h>

int calculator();
void getNumbers(int * num1, int * num2);
int addition(int, int);
int substraction(int, int);
int multiplication(int, int);
int division(int, int);

int main() {
  while(calculator() != 1);
  return 0;
}

int addition(int num1, int num2) {
  return num1 + num2;
}

int substraction(int num1, int num2) {
  return num1 - num2;
}

int multiplication(int num1, int num2) {
  return num1 * num2;
}

int division(int num1, int num2) {
  return num1 / num2;
}

void getNumbers(int * num1, int * num2) {
  int _num1, _num2;
  printf("First number: ");
  scanf("%d", &_num1);
  printf("Second number: ");
  scanf("%d", &_num2);
  *num1 = _num1;
  *num2 = _num2;
}

int calculator() {
  printf("\n\nC Calculator:\n\
\n\
  1 - Addition\n\
  2 - Substraction\n\
  3 - Multiplication\n\
  4 - Division\n\
\n\
  0 - Exit\n\
\n\
Select an option: ");
  unsigned short int selectedOption;
  scanf("%hd", &selectedOption);

  switch(selectedOption) {
    case 1: {
      int num1, num2;
      getNumbers(&num1, &num2);
      printf("Result: %d", addition(num1, num2));
      break;
    }

    case 2: {
      int num1, num2;
      getNumbers(&num1, &num2);
      printf("Result: %d", substraction(num1, num2));
      break;
    }

    case 3: {
      int num1, num2;
      getNumbers(&num1, &num2);
      printf("Result: %d", multiplication(num1, num2));
      break;
    }

    case 4: {
      int num1, num2;
      getNumbers(&num1, &num2);
      printf("Result: %d", division(num1, num2));
      break;
    }
    
    case 0: 
      return 1;

   default:
      printf("Please, write a number from 0 to 4 and press enter");
    break;
  }
  return 0;
}

