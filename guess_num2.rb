class Guess
  attr_reader :count, :duration
  attr_accessor :range_f, :range_t, :tolerance

  def initialize (range_f, range_t, tolerance)
    @range_f = range_f
    @range_t = range_t
    @tolerance = tolerance
  end

  def guess_game
    btime = Time.now

    rnum = rand(@range_f .. @range_t)
    count = 0
    again = ""


    puts "Guess the number: "

    while again != 'n'

      number = gets.chomp.to_i
      count+=1

      if number == rnum
        puts "you guessed correctly, the number was #{rnum}"
        atime = Time.now
        again ='n'

      else
        puts "that's not the correct number, try again"
        if number > rnum
          if number-@tolerance > rnum
            puts "You're too high"
          else
            puts "A bit too high"
          end
        else   #  number < rnum
          if number+@tolerance < rnum
            puts "Your too low"
          else
            puts "A bit too low"
          end
        end
      end

    end
    puts "You had #{count} guesses."
    puts "And it took you #{atime-btime} seconds."
  end
end



puts 'You need to specify a number range and a tolerance:'
print 'Starting number: '
range_f = gets.chomp.to_i

print 'End number: '
range_t = gets.chomp.to_i

print 'Tolerance: '
tolerance = gets.chomp.to_i


play = Guess.new(range_f, range_t, tolerance)
play.guess_game
