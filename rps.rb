# Scissors beats Paper
# Paper beats Rock
# Rock beats Scissors

rps = ['Rock' , 'Paper' , 'Scisors']
pc = rps.sample

puts 'lets play Rock Paper Scisors'
puts 'enter your choice (r/p/s)'
hu = gets.chomp.downcase

puts "pc has chosen #{pc}"

if ( hu=='r' && pc =='Rock'  ) || ( hu=='p' && pc =='Paper' ) || ( hu=='s' && pc =='Scisors' )
  puts 'no winner'
end

if hu=='r' &&  pc =='Paper'
  puts 'pc wins'
end

if hu=='r' && pc =='Scisors'
  puts 'you won'
end

if hu=='p' &&  pc =='Rock'
  puts 'you won'
end

if hu=='p' && pc =='Scisors'
  puts 'pc wins'
end

if hu=='s' &&  pc =='Paper'
  puts 'you won'
end

if hu=='s' && pc =='Rock'
  puts 'pc wins'
end
