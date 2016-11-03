#Ask user A and B, than select one of operations: +, -, *, / and print operation's result
class Calculator
  def initialize(first_item,  second_item)
    @first_item = first_item.to_i
    @second_item = second_item.to_i
  end
  def calc(operator)
    if operator == "+"
      puts @first_item + @second_item
    elsif operator == "-"
      puts @first_item - @second_item
    elsif operator == "*"
      puts @first_item * @second_item
    elsif operator == "/"
      if @second_item != 0
        puts (@first_item.to_f / @second_item).round(2)
      else
        puts "Warning: Division by zero"
      end
    else
      puts "Incorrect operator: ", operator
   end
  end
end

while true
  puts "Ruby calculator: +, -, *, / "
  puts "Enter A"
  a = gets.chomp
  puts "Enter B"
  b = gets.chomp
  puts "choose action:"
  action = gets.chomp
  Calculator.new(a,b).calc(action)
  puts "Would you like to continue? [y/n]"
  if gets.chomp =="n"
    puts "Bye"
    break
    exit(0)
  end
end