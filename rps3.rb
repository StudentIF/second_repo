# parent class 

class Rps

  def initialize
    @hu = hu
    @valid = ['r', 'p', 's' ]
    @rps = ['Rock' , 'Paper' , 'Scisors']
    @pc = pc
  end

  def validate(hu)
    @valid.include(@hu)  # returns ture if valid selection
  end

  def pc_choice
    @pc = rps.sample
  end

end


# the pc's choice is in the parent class
# class is called based on the player's choice
# i.e. if player choses Rock, call Rock class,
# i.e. if player choses Paper, call Paper class,
# i.e. if player choses Stone, call Stone class,

#
#
#


class Rock < Rps

  def hu_wins(pc)
    if pc == 's'
      return = 'true'
    end
  end

end


class Paper < Rps

  def hu_wins(pc)
    if pc == 's'
      return = 'true'
    end
  end

end


class Rock < Rps

  def hu_wins(pc)
    if pc == 's'
      return = 'true'
    end
  end

end







puts 'lets play Rock Paper Scisors'
puts 'How many rounds?'
rounds = gets.chomp.to_i

rps = ['Rock' , 'Paper' , 'Scisors']
pc_win = 0
hu_win = 0
i = 0

while i < rounds do
  pc = rps.sample
  puts 'enter your choice (r/p/s)'
  hu = gets.chomp.downcase
  puts "pc has chosen #{pc}"

#  if ( hu=='r' && pc =='Rock'  ) || ( hu=='p' && pc =='Paper' ) || ( hu=='s' && pc =='Scisors' )
#    puts 'no winner'
#  end

  if hu=='r' &&  pc =='Paper'
    pc_win += 1
  end

  if hu=='r' && pc =='Scisors'
    hu_win += 1
  end

  if hu=='p' &&  pc =='Rock'
    hu_win += 1
  end

  if hu=='p' && pc =='Scisors'
    pc_win += 1
  end

  if hu=='s' &&  pc =='Paper'
    hu_win += 1
  end

  if hu=='s' && pc =='Rock'
    pc_win += 1
  end

  i += 1
end

puts "** pc scored: #{pc_win}"
puts "** you scored: #{hu_win}"

if pc_win > hu_win
  puts 'pc won'
elsif hu_win > pc_win
    puts 'you won'
  else
    puts 'no winner this time around'
end
