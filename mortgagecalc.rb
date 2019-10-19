# create a mortgage calculator to find the monthly paymert (m), using 3 pieces of info
# the loan amount (p)
# the APR as monthly interest (j)
# the loan duration in months (n)
# formula:  m = p * (j / (1 - (1 + j)**(-n)))

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i.to_s == num
end

def valid_float?(num)
  num.to_f.to_s == num
end

def monthly_rate(apr) # converting to monthly interest rate
  apr / 12
end

def payment_calc(principle, apr, duration)
  j = apr / 12
  n = duration * 12
  payment = principle * (j / (1 - (1 + j)**(-n)))
end

payment = nil

prompt('Welcome to the EZ Mortgage Calculator!')
prompt('What is your desired loan amount?')
principle = gets.chomp.to_i
prompt('What is your annual percentage rate?')
apr = gets.chomp.to_f
prompt('What is the duration of your loan in years?')
duration = gets.chomp.to_i

puts payment_calc(principle, apr, duration)


