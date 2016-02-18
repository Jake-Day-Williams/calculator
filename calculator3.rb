def menu
  puts "Calculator is ready."
end

def first
  print "First number: "
  @first = gets.to_f
end

def last
  print "Next number: "
  @last = gets.to_f
end

def compute
  print "Which modifier: "
  modifier = gets.strip
  case modifier
    when "+"
      add
    when "-"
      subtract
    when "*"
      multiply
    when "/"
      divide
    else
      puts "Abandon ship!"
      exit
  end
end

def add
  last
  total = @first + @last
  puts "#{@first} + #{@last} = #{total.round(2)}" 
  @first = total
  compute
end

def subtract
  last
  total = @first - @last
  puts  "#{@first} - #{@last} = #{total.round(2)}"
  @first = total
  compute
end

def multiply
  last
  total = @first * @last
  puts  "#{@first} * #{@last} = #{total(2)}"
  @first = total
  compute
end

def divide
  last
  total = @first / @last
  puts  "#{@first} / #{@last} = #{total(2)}"
  @first = total
  compute
end 


def all
  menu
  first
  compute
end

all
