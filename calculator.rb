
puts "Welcome to my calculator"
puts "This calculator helps you add, subtract, multiply, and divide"

def get_valid_operation(prompt)
  puts prompt
  gets.chomp.downcase
end

def get_valid_number(prompt)
  puts prompt
  gets.chomp.to_f
end

def calculator
  num1 = get_valid_number("Please enter the first number:")
  num2 = get_valid_number("Please enter the second number:")

  puts "Which operation would you like to perform?"
  puts "1. Addition (+)"
  puts "2. Subtraction (-)"
  puts "3. Multiplication (*)"
  puts "4. Division (/)"
  
  operator = get_valid_operation("Enter the number corresponding to the operation:")

  result = calculate_result(num1, num2, operator)

  display_result(num1, operator, num2, result)

  puts "Thank you"
end

def calculate_result(num1, num2, operator)
  case operator
  when "1"
    num1 + num2
  when "2"
    num1 - num2
  when "3"
    num1 * num2
  when "4"
    if num2 != 0
      num1 / num2
    else
      puts "Error: Division by zero is not allowed!"
      return
    end
  else
    puts "Error: Invalid operation!"
    return
  end
end

def display_result(num1, operator, num2, result)
  operator_text = case operator
                  when "1" then "+"
                  when "2" then "-"
                  when "3" then "*"
                  when "4" then "/"
                  end
  puts "Result: #{num1} #{operator_text} #{num2} = #{result}"
end

# Calling the calculator method to run the app
calculator
