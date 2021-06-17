def calculator():
  def getNumbers():
    num1 = input("First number: ")
    num2 = input("Second number: ")
    return int(num1), int(num2)

  def addition(num1, num2):
    return num1 + num2

  def substraction(num1, num2):
    return num1 - num2

  def multiplication(num1, num2):
    return num1 * num2

  def division(num1, num2):
    return num1 / num2

  selectedOption = int(input("""

Bash Calculator:

  1 - Addition
  2 - Substraction
  3 - Multiplication
  4 - Division

  0 - Exit

Select an option: """))

  if selectedOption == 1:
    num1, num2 = getNumbers()
    print(f"Result {addition(num1, num2)}")

  elif selectedOption == 2:
    num1, num2 = getNumbers()
    print(f"Result {substraction(num1, num2)}")

  elif selectedOption == 3:
    num1, num2 = getNumbers()
    print(f"Result {multiplication(num1, num2)}")

  elif selectedOption == 4:
    num1, num2 = getNumbers()
    print(f"Result {division(num1, num2)}")

  elif selectedOption == 0:
    return 1

  else:
      print("Please, write a number from 0 to 4 and press enter")
      

while (calculator() != 1):
  pass

