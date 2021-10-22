using System;

public class CliInteractiveCalculator {
  static int Addition(int num1, int num2) {
    return num1 + num2;
  }

  static int Substraction(int num1, int num2) {
    return num1 - num2;
  }

  static int Multiplication(int num1, int num2) {
    return num1 * num2;
  }

  static int Division(int num1, int num2) {
    return num1 / num2;
  }

  static (int, int) GetNumbers() {
    Console.WriteLine("First number: ");
    int num1 = Int32.Parse(Console.ReadLine());
    Console.WriteLine("Second number: ");
    int num2 = Int32.Parse(Console.ReadLine());
    return (num1, num2);
  }


  static int Calculator() {
    Console.Write($@"

C# Calculator:

  1 - Addition
  2 - Substraction
  3 - Multiplication
  4 - Division

  0 - Exit

Select an option: ");
  
    int selectedOption;
    if (int.TryParse(Console.ReadLine(), out selectedOption)) {
      int num1, num2;
      switch(selectedOption) {
        case 1:
	  (num1, num2) = GetNumbers();
          Console.WriteLine("Result: {0}", Addition(num1, num2));
	break;

	case 2:
          (num1, num2) = GetNumbers();
          Console.WriteLine("Result: {0}", Substraction(num1, num2));
	break;

	case 3:
          (num1, num2) = GetNumbers();
          Console.WriteLine("Result: {0}", Multiplication(num1, num2));
	break;

	case 4:
          (num1, num2) = GetNumbers();
          Console.WriteLine("Result: {0}", Division(num1, num2));
	break;

	case 0:
          return 1;

	default:
          Console.WriteLine("Please, write a number from 0 to 4 and press enter");
	break;

      } 
    } else {
      Console.WriteLine("Please, write a number from 0 to 4 and press enter");
    }
    return 0;
  }

  static int Main(string[] args) {
    while(Calculator() != 1); 
    return 0;
  }
}
