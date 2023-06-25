# def calculator
#   puts "Welcome to my Calculator"
#   puts "Please enter the first number:"
#   num1 = gets.chomp.to_f

#   puts "Please enter the second number:"
#   num2 = gets.chomp.to_f

#   puts "Please select an operation:"
#   puts "1. Addition (+)"
#   puts "2. Subtraction (-)"
#   puts "3. Multiplication (*)"
#   puts "4. Division (/)"
#   choice = gets.chomp.to_i

#   case choice
#   when 1
#     result = num1 + num2
#     operator = "+"
#   when 2
#     result = num1 - num2
#     operator = "-"
#   when 3
#     result = num1 * num2
#     operator = "*"
#   when 4
#     if num2 != 0
#       result = num1 / num2
#       operator = "/"
#     else
#       puts "Error: Division by zero is not allowed!"
#       return
#     end
#   else
#     puts "Error: Invalid operation!"
#     return
#   end

#   puts "Result: #{num1} #{operator} #{num2} = #{result}"
# end

# # Calling the calculator method to run the app
# calculator

# frozen_string_literal: true

def calculator
  puts "Welcome to my Calculator "
  num1 = get_number("Please enter the first number:")
  num2 = get_number("Please enter the second number:")
  operator = get_operator

  result = calculate_result(num1, num2, operator)

  display_result(num1, operator, num2, result)
end
# getting a number from the user
def get_number(prompt)
    puts prompt
    gets.chomp.to_f
end
# getting operator
def get_operator
    puts "Please select an operation:"
    puts "1. Addition (+)"
    puts "2. Subtraction (-)"
    puts "3. Multiplication (*)"
    puts "4. Division (/)"
    gets.chomp.to_i
  end

  # calculating result based on operator
  def calculate_result(num1, num2, operator)
    case operator
    when 1
      num1 + num2
    when 2
      num1 - num2
    when 3
      num1 * num2
    when 4
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
  # getting results
  def display_result(num1, operator, num2, result)
    puts "Result: #{num1} #{operator_symbol(operator)} #{num2} = #{result}"
  end
  def operator_symbol(operator)
    case operator
    when 1
      "+"
    when 2
      "-"
    when 3
      "*"
    when 4
      "/"
    end
  end
  
  # Calling the calculator method to run the app
  calculator