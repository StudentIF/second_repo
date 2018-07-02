class Dice

  def initialize
    @num=[]
    @caa = ['crown', 'anchor', 'diamond', 'spade', 'club', 'heart']
    @pay=0
    @count=0
  end

  def roll
    num = @caa.sample
    puts num
    @num.push(num)
  end

  def addup(bet, amnt)
    @num.each do |v|
      if v==bet
        @pay+=amnt
        @count+=1
      end
    end
    if @count>0
      puts "You scored #{@count}, you have won £#{@pay}, profit: £#{@pay-amnt}"
    else
      puts "You scored #{@count}, you have lost £#{amnt}"
    end
  end

end

print 'Where do you want to bet? (crown, anchor, diamond, spade, club or heart) '
bet = gets.chomp.downcase
# check for a valid selection, throw error if invalid.
print 'How much do you want to bet? '
amnt = gets.chomp.to_i
puts  "you have bet £#{amnt} on #{bet} - Good Luck. "
puts  '--------------------------------------------------'

mydice=Dice.new

3.times  do
  mydice.roll
end

puts  '--------------------------------------------------'
# puts mydice.inspect
mydice.addup(bet, amnt)
puts  '--------------------------------------------------'
