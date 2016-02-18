def menu
  puts "Calculator is ready."
end

def first_num
  print "first_num number: "
  @first_num = gets.to_f
end

def next_num
  print "Next number: "
  @next_num = gets.to_f
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
  next_num
  total = @first_num + @next_num
  puts "#{@first_num} + #{@next_num} = #{total.round(2)}" 
  @first_num = total
  compute
end

def subtract
  next_num
  total = @first_num - @next_num
  puts  "#{@first_num} - #{@next_num} = #{total.round(2)}"
  @first_num = total
  compute
end

def multiply
  next_num
  total = @first_num * @next_num
  puts  "#{@first_num} * #{@next_num} = #{total(2)}"
  @first_num = total
  compute
end

def divide
  next_num
  total = @first_num / @next_num
  puts  "#{@first_num} / #{@next_num} = #{total(2)}"
  @first_num = total
  compute
end 


def all
  menu
  first_num
  compute
end

all
