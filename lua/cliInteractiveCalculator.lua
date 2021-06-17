function calculator()
  function getNumbers()
    io.write("First number: ");
    local num1 = io.read();
    io.write("Second number: ");
    local num2 = io.read();
    return tonumber(num1), tonumber(num2);
  end

  function addition(num1, num2)
    return num1 + num2;
  end

  function substraction(num1, num2)
    return num1 - num2;
  end

  function multiplication(num1, num2)
    return num1 * num2;
  end

  function division(num1, num2)
    return num1 / num2;
  end

  io.write([[

Lua Calculator:

  1 - Addition
  2 - Substraction
  3 - Multiplication
  4 - Division

  0 - Exit

Select an option: ]]);
  local selectedOption = tonumber(io.read());

  local num1, num2;
  if selectedOption == 1 then
    num1, num2 = getNumbers();
    print("Result: " .. addition(num1, num2));
  elseif selectedOption == 2 then
    num1, num2 = getNumbers();
    print("Result: " .. substraction(num1, num2));
  elseif selectedOption == 3 then
    num1, num2 = getNumbers();
    print("Result: " .. multiplication(num1, num2));
  elseif selectedOption == 4 then
    num1, num2 = getNumbers();
    print("Result: " .. division(num1, num2));
  elseif selectedOption == 0 then
    return 1;
  else 
    print("Please, write a number from 0 to 4 and press enter");
  end
end


while (calculator() ~= 1) do end
