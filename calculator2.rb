# √ take first number
# √ take modifier
# √ take the last number
# √ puts result
# √ error checking
# √ user input and modifiers should be checked for proper input type
# √ set first_number and allow for another modifier and last number so result continues
# √ make + - * / work
# √ make clear work 

require 'pry';

def first_number
  puts "Please enter a number"
  @first_number = gets.chomp
  if @first_number == 'exit'
    exit
  elsif     
    @first_number.match(/[^[:digit:]]+/)
    puts "NOT A NUMBER ~~ TRY AGAIN"
    first_number
  elsif
    @first_number == 'clear'
    puts "Calculator has been cleared!"
    first_number   
  else
    @first_number = @first_number.to_f
  end
end

def get_modifier
  puts "Please enter + - * or / "
  @modifier = gets.chomp  
  if 
    @modifier === 'exit'
      exit
    elsif
      @modifier === 'clear'
      puts "Calculator has been cleared!"
      first_number
      get_modifier
    elsif
    @modifier =~ /[-+*\/]/
    @modifier   
    else
    puts "~~ Not a Valid Operator ~~ Please try again"
    get_modifier
end 
end

def second_number
  puts "Please enter a number"
  @second_number = gets.chomp
  if 
    @second_number === 'exit'
    exit
  elsif
    @second_number === 'clear'
    puts "Calculator has been cleared!"
    first_number
    get_modifier
    second_number 
  elsif    
    @second_number.match(/[^[:digit:]]+/)
    puts "NOT A NUMBER ~~ TRY AGAIN"
    second_number   
  else
    @second_number = @second_number.to_f
  end
end

def put_result
  if @modifier == "+" 
    @final_result = "#{(@first_number) + (@second_number)}" 
  elsif @modifier == "-"
    @final_result = "#{(@first_number) - (@second_number)}"
  elsif @modifier == "*"
    @final_result = "#{(@first_number) * (@second_number)}"
  elsif @modifier == "/"
    @final_result = "#{(@first_number) / (@second_number)}"
  else
    puts "Something went wrong! Please start again"    
  end
  puts "The result is: #{@final_result}"
  @first_number = @final_result.to_f
  
  get_modifier
  second_number
  put_result
end

# def get_number
# puts "Please enter a number"
#   @get_number = gets.chomp
#   if @get_number.match(/[^[:digit:]]+/)
#     puts "NOT A NUMBER ~~ TRY AGAIN"
#     get_number
#   else
#     @get_number = @second_number.to_f
#   end
# end


def calculator
  puts "Welcome to the DPL Ruby Calculator!"
  puts "Type 'clear' to clear the calculator at anytime"
  puts "Type 'exit' to exit the calculator at anytime"
  first_number
  get_modifier
  second_number
  put_result 
end

calculator

  
