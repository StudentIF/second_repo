class Guess
  attr_reader :count, :duration
  attr_accessor :range_f, :range_t

  def initialize (range_f, range_t)
    @range_f = range_f
    @range_t = range_t
  end

  def guess_game
    btime = Time.now
    atime = 0

    count = 0
    again = ""

    while again != 'n'

      rnum = rand(@range_f .. @range_t)
      count+=1

      puts "Is it number: #{rnum} ?"
      puts 'Please reply (y)es, too (h)igh or too (l)ow. Use (n) to exit.'
      again = gets.chomp.downcase

      case
      when again == 'y'  # corret number
        atime = Time.now
        again = 'n'

      when again == 'h'  # too high
        @range_t = rnum

      when again == 'l'  # too low
        @range_f = rnum

      end

      #  puts "*** from: #{@range_f}    to: #{@range_t}"   # debug 

    end

    if atime != 0
      puts "The computer had #{count} guesses."
      puts "And it took #{atime-btime} seconds."
    else
      puts "You aborted the game after #{count} wrong guesses."
    end
  end
end



puts 'Think of a number. Provide a number range, within which the program will guess. '
print 'Starting number: '
range_f = gets.chomp.to_i

print 'End number: '
range_t = gets.chomp.to_i

# print 'Tolerance: '
tolerance = 0


play = Guess.new(range_f, range_t)
play.guess_game
