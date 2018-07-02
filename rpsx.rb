rps = ['Rock' , 'Paper' , 'Scisors']
pc = rps.sample

puts 'lets play Rock Paper Scisors'
puts 'How many rounds?'
ir = gets.chomp.to_i

pc_win = 0
player_win = 0
i = 0

while i < ir do
  puts 'enter your choice (r/p/s)'
  player = gets.chomp.downcase
  puts "pc has chosen #{pc}"
  Checkscore.new(pc, player)
  i += 1
end

puts "pc scored: #{pc_win}"
puts "you scored: #{player_win}"

if pc_win > player_win
  puts 'pc won'
elsif player_win > pc_win
  puts 'you won'
else
  puts 'no winner this time around'
end

class Checkscore
  def inititalize(pc, player, pc_win, player_win)
    @pc = pc
    @player = player
    @pc_win = pc_win
    @player_win = player_win
  end

#  if ( player=='r' && pc =='Rock'  ) || ( player=='p' && pc =='Paper' ) || ( player=='s' && pc =='Scisors' )
#    puts 'no winner'
#  end

  if player=='r' &&  pc =='Paper'
    @player_win =+1
  end

  if player=='r' && pc =='Scisors'
    @pc_win =+1
  end


  if player=='p' &&  pc =='Rock'
    @pc_win =+1
  end

  if player=='p' && pc =='Scisors'
    @player_win =+1
  end


  if player=='s' &&  pc =='Paper'
    @player_win =+1
  end

  if player=='s' && pc =='Rock'
    @pc_win =+1
  end


end
