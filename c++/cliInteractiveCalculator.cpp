#include <iostream>

using namespace std;

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
  cout << "First number: ";
  cin >> *num1;
  printf("Second number: ");
  cin >> *num2;
}

int calculator() {
  cout << R"(

C++ Calculator:

  1 - Addition
  2 - Substraction
  3 - Multiplication
  4 - Division

  0 - Exit

Select an option: )";
  unsigned short int selectedOption;
  cin >> selectedOption;

  switch(selectedOption) {
    case 1: {
      int num1, num2;
      getNumbers(&num1, &num2);
      cout << "Result: " << addition(num1, num2);
      break;
    }

    case 2: {
      int num1, num2;
      getNumbers(&num1, &num2);
      cout << "Result: " << substraction(num1, num2);
      break;
    }

    case 3: {
      int num1, num2;
      getNumbers(&num1, &num2);
      cout << "Result: " << multiplication(num1, num2);
      break;
    }

    case 4: {
      int num1, num2;
      getNumbers(&num1, &num2);
      cout << "Result: " << division(num1, num2);
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

