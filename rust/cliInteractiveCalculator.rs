use std::io::{self, Write};

fn main() {
  while calculator() != 1 {

  }
}

fn calculator() -> i8 {
  fn get_numbers() -> (i64, i64) {
    print!("First number: ");
    io::stdout().flush().expect("Unable to flush stdout");
    let stdin = io::stdin();
    let _num1 = &mut String::new();
    stdin.read_line(_num1).expect("Please, provide a number");

    print!("Second number: ");
    io::stdout().flush().expect("Unable to flush stdout");
    let _num2 = &mut String::new();
    stdin.read_line(_num2).expect("Please, provide a number");
   
    let num1:i64 = match _num1.trim().parse() {
      Ok(num) => num,
      Err(_) => 0
    };
    let num2:i64 = match _num2.trim().parse() {
      Ok(num) => num,
      Err(_) => 0
    };

    (num1, num2)
  }

  fn addition(num1:i64, num2:i64) -> i64 {
    num1 + num2
  }

  fn substraction(num1:i64, num2:i64) -> i64 {
    num1 - num2
  }

  fn multiplication(num1:i64, num2:i64) -> i64 {
    num1 * num2
  }

  fn division (num1:i64, num2:i64) -> i64 {
    num1 / num2
  }


  print!("

Rust Calculator:

  1 - Addition
  2 - Substraction
  3 - Multiplication
  4 - Division

  0 - Exit

Select an option: ");
  io::stdout().flush().expect("Unable to flush stdout");

  let stdin = io::stdin();
  let _selected_option = &mut String::new();
  stdin.read_line(_selected_option).expect("");
  let selected_option:i8 = match _selected_option.trim().parse() {
    Ok(num) => num,
    Err(_) => -1
  };


  match selected_option  {
    1 => {
      let (num1, num2) = get_numbers();
      let res = addition(num1, num2);
      println!("Res: {}", res);
      0
    },

    2 => {
      let (num1, num2) = get_numbers();
      let res = substraction(num1, num2);
      println!("Res: {}", res);
      0
    },

    3 => {
      let (num1, num2) = get_numbers();
      let res = multiplication(num1, num2);
      println!("Res: {}", res);
      0
    },

    4 => {
      let (num1, num2) = get_numbers();
      let res = division(num1, num2);
      println!("Res: {}", res);
      0
    },

    0 => 1,

    _ => {
      println!("Please, write a number from 0 to 4 and press enter");
      io::stdout().flush().expect("Unable to flush stdout");
      0
    }
  }
}

