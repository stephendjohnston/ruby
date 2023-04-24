# Build a calculator that takes a loan amount, Annual Percentage Rate(APR) 
# and loan duration and calculates the monthly payment for the loan.
# use this formula:
# m = p * (j / (1 - (1 + j)**(-n)))
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months

# Examples
# => calculate_payment(monthly)

# Data Structures:
# => inputs: integer, float
# => outputs: integer, float, string

# Algorithm:
# ask user for loan amount, APR and loan duration in years
# set user inputs to variables
# for each input, determine if they are valid inputs (not strings)
# to determine monthly interest rate, divide APR by 12, then again by 100
# to get loan duration, multiply years by 12
# determine monthly payment via given formula
# output monthly payment amount

=begin
FORMAL PSEUDO CODE

PRINT welcome message to user and ask for name
GET user_name

PRINT what is the loan amount?
GET loan_amount

IF loan_amount is empty or is less than 0
PRINT error mesage
ELSE
BREAK

PRINT what is the APR
GET APR 

IF APR is empty or < 0 or > 100 
PRINT error message
ELSE
BREAK

=end

def prompt(message)
  puts("=> #{message}")
end

prompt("Welcome to the Mortgage Calculator! Please enter your name:")
name = ''
  loop do
    name = gets.chomp 

    if name.empty?
      prompt("Please enter a valid name")
    else 
      break
    end
  end
  
loop do # main loop
  loan_amount = ''
  loop do
    prompt("Please enter the loan amount:")
    loan_amount = gets.chomp

    if loan_amount.empty? || loan_amount.to_f < 0
      prompt("Please enter a positive number.")
    else 
      break
    end
  end

  annual_percentage_rate = ''
  loop do
    prompt("Please enter the Annual Percentage Rate:")
    annual_percentage_rate = gets.chomp

    if annual_percentage_rate.empty? || annual_percentage_rate.to_f < 0 || annual_percentage_rate.to_f > 100
      prompt("Please enter a valid rate.")
    else
      break
    end
  end

  loan_duration = ''
  loop do 
    prompt("Please enter the duration of loan in years:")
    loan_duration = gets.chomp

    if loan_duration.empty? || loan_duration.to_i < 0
      prompt("Please enter a positive number.")
    else 
      break
    end
  end

  monthly_interest_rate = (annual_percentage_rate.to_f / 12) / 100
  loan_duration = loan_duration.to_i * 12
  monthly_payment = loan_amount.to_f * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration)))

  prompt("The monthly payment is $#{format('%02.2f', monthly_payment.to_f)}")
  prompt("Another calculation?")
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the Mortgage Calculator!")
prompt("Good bye #{name}!")
