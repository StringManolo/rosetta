// Node.js
const fs = require("fs");

const calculator = () => {
  const printAtSameLine = text => {
    const open = (filename, mode) => {
      let fd = {};
      fd.internalFd = fs.openSync(filename, mode);
      fd.read = (buffer, position, len) => fs.readSync(fd.internalFd, buffer, position, len);
      fd.puts = (str) => fs.writeSync(fd.internalFd, str);
      fd.close = () => fs.closeSync(fd.internalFd);
      return fd;
    }

    const fd = open("/dev/stdout", "w");
    fd.puts(text);
    fd.close();
  }

  const promptForInput = text => {
    printAtSameLine(text);//console.log adds newline at end of input
    let rtnval = "";
    let buffer = Buffer.alloc ? Buffer.alloc(1) : new Buffer(1);
    for(;;) {
      fs.readSync(0, buffer, 0, 1);
      if(buffer[0] === 10) {
        break;
      } else if(buffer[0] !== 13) {
        rtnval += new String(buffer);
      }
    }
    return rtnval;
  }

  const getNumbers = () => {
    return [+promptForInput("First number: "), +promptForInput("Second number: ")];
  }

  const addition = (num1, num2) => num1 + num2;
  const substraction = (num1, num2) => num1 - num2;
  const multiplication = (num1, num2) => num1 * num2;
  const division = (num1, num2) => num1 / num2;

  const selectedOption = promptForInput(`

Javascript Calculator:

  1 - Addition
  2 - Substraction
  3 - Multiplication
  4 - Division

  0 - Exit

Select an option: `);

  let num1, num2;
  switch(+selectedOption) {
    case 1: 
      [num1, num2] = getNumbers();
      console.log("Result: " + addition(num1, num2));
    break;

    case 2:
      [num1, num2] = getNumbers();
      console.log("Result: " + substraction(num1, num2));
    break;

    case 3:
      [num1, num2] = getNumbers();
      console.log("Result: " + multiplication(num1, num2));
    break;

    case 4:
      [num1, num2] = getNumbers();
      console.log("Result: " + division(num1, num2));
    break;

    case 0:
      return 1;

    default:
      console.log("Please, write a number from 0 to 4 and press enter");
  }
}

while(!calculator());
