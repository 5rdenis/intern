# method to check if a string is a numeric value
class String
  def numeric?
	Float(self) != nil rescue false
  end
end

#user input
puts "Input a"
a = gets.chomp

puts "Input b"
b = gets.chomp

puts "Input c"
c = gets.chomp

# checking for correct input
if (a.numeric?) && (b.numeric?) && (c.numeric?)

# converting strings to integer	
  a = a.to_i
  b = b.to_i 
  c = c.to_i

# computation  
  d = b * b - (4 * a * c)
  if d > 0
    x1 = (-b + Math.sqrt(d)) / 2 * a
    x2 = (-b - Math.sqrt(d)) / 2 * a
    puts "D=#{d}, x1=#{x1}, x2=#{x2}"
  elsif d == 0
  	x = -b / 2 * a
  	puts "D=#{d}, x=#{x}"
  else 
  	puts "D=#{d}, no roots"
  end
else 
	puts "Incorrect input"
end

