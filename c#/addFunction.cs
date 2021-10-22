using System;

public class AddFunction {
  static int Add(int sum1, int sum2) {
    return sum1 + sum2;
  }

  static int Main() {
    Console.WriteLine("{0}", Add(1, 2));
    return 0;
  }
}
