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
  puts "Welcome to the Calculator App!"
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
# getthing operator
def get_operator
    puts "Please select an operation:"
    puts "1. Addition (+)"
    puts "2. Subtraction (-)"
    puts "3. Multiplication (*)"
    puts "4. Division (/)"
    gets.chomp.to_i
  end