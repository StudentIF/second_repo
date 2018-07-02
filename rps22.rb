puts 'lets play Rock Paper Scisors'
puts 'How many rounds?'
rounds = gets.chomp.to_i

rps = ['Rock' , 'Paper' , 'Scisors']
pc_win = 0
hu_win = 0
i = 0
goon = 'y'

while goon == 'y' do
  goon = 'n'

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
    # puts 'pc won'

    puts 'Do you want to extend the game by another two rounds? (y/n)'
    goon = gets.chomp.downcase

    if goon == 'y' 
      rounds += 2
    end

  elsif hu_win > pc_win
      puts 'you won'
    else
      puts 'no winner this time around'
  end

end
