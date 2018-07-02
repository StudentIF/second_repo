
# rnum = 1 + rand(100)
rnum = rand(1..100)

again = ""
tolerance = 5
count = 0
btime = Time.now

puts "Guess the number: "

while again != 'n'

  number = gets.chomp.to_i
  count+=1
  # puts number

  if number == rnum
    puts "you guessed correctly, the number was #{rnum}"
    atime = Time.now
    again ='n'

  else
    puts "that's not the correct number, try again"
    if number > rnum
      if number-tolerance > rnum
        puts "You're too high"
      else
        puts "A bit too high"
      end
    else   #  number < rnum
      if number+tolerance < rnum
        puts "Your too low"
      else
        puts "A bit too low"
      end
    end

  #  puts "would you like to try again (y/n)"
  #  again = gets.chomp.downcase

  end

end

puts "You had #{count} guesses."
puts "And it took you #{atime-btime} seconds."
