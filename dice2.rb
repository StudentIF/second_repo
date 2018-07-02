class Dice

  def initialize
    @num=[]
  end

  def roll
    num = 1 + rand(6)
    puts num
    @num.push(num)
  end

  def addup
    puts "Total value: " + @num.sum.to_s
  end

end

print 'How many dice? '
number = gets.chomp.to_i
puts   '-----------------'

mydice=Dice.new

number.times  do
  mydice.roll
end

puts   '-----------------'
# puts mydice.inspect
mydice.addup
puts   '-----------------'
