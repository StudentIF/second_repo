
puts 'How many dice? '
number = gets.chomp.to_i
# puts number
puts '----------------'

total = 0
number.times  do
  num = 1 + rand(6)
  puts num
  total += num
end

puts '----------------'
puts "Total: #{total}"
