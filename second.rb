goods_hash = Hash.new{|hsh,key| hsh[key] = [] }	# создаем hash, в котором value это array

input = ""
name = ""
price = 0
quantity = 0
totalsum = 0

print "Enter name,price,quantity(e.g.: milk,5,10);or type STOP to quit:"
input = gets.chomp
while input != "stop" do
  (name, price, quantity) = input.split(",")
  price = price.to_i
  quantity = quantity.to_f

  goods_hash[name].push price
  goods_hash[name].push quantity
  totalsum += price * quantity # считаем полную сумму
  print "Enter name,price,quantity(e.g.: milk,5,10);or type STOP to quit:"
  input = gets.chomp
end

puts "Here is the content that was in the hash: "
goods_hash.each do |key, (price, quantity)|

  puts "#{key} => #{price}, #{quantity}; sum= #{price*quantity}"
end

puts "totalsum= #{totalsum}"
