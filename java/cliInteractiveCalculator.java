import java.util.Scanner;

public class cliInteractiveCalculator {
  public static void main(String[] args) {
    while(calculator() != 1) {

    }
    input.close();
  }

  public static Scanner input = new Scanner(System.in);

  public static int[] getNumbers() {
    System.out.print("First number: ");
    int num1 = input.nextInt();
    System.out.print("Second number: ");
    int num2 = input.nextInt();

    return new int[] {num1, num2};
  }

  public static int addition(int num1, int num2) {
    return num1 + num2;
  }

  public static int substraction(int num1, int num2) {
    return num1 - num2;
  }

  public static int multiplication(int num1, int num2) {
    return num1 * num2;
  }

  public static int division(int num1, int num2) {
    return num1 / num2;
  }

  public static int calculator() {
    System.out.print("\n\nJava Calculator:\n\n" +
      "  1 - Addition\n" +
      "  2 - Substraction\n" +
      "  3 - Multiplication\n" +
      "  4 - Division\n" +
      "\n" +
      "  0 - Exit\n" +
      "\n" +
      "Select an option: ");
    int selectedOption = input.nextInt();

    int nums[];
    int res;
    switch(selectedOption) {
      case 1:
        nums = getNumbers();
	res = addition(nums[0], nums[1]);
        System.out.println("Res: " + res);
      break;

      case 2:
        nums = getNumbers();
        res = substraction(nums[0], nums[1]);
        System.out.println("Res: " + res);
      break;

      case 3:
        nums = getNumbers();
        res = multiplication(nums[0], nums[1]);
        System.out.println("Res: " + res);
      break;

      case 4:
        nums = getNumbers();
        res = division(nums[0], nums[1]);
        System.out.println("Res: " + res);
      break;

      case 0:
        return 1;

      default:
	System.out.println("Please, write a number from 0 to 4 and press enter");
    }
    return 0;
  }

}
