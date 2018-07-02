class Choice
  def initialize(value)
    @value = value
  end

  def value()
    @value
  end

  # get a value from player
  def self.get_choice(s)
    case s
    when 'r'
      Rock.new
    when 'p'
      Paper.new
    when 's'
      Scissors.new
    end
  end

end  # endo of Choice class


# this class is called based on the players choice
class Rock < Choice
  def initialize()
    super('rock')
  end

  def beats(other)
    puts other.value
    if other.value == 'rock'
      puts 'same choice'
    elsif other.value == 'scissors'
      puts 'you won'
    else
      puts 'you lost'
    end
  end
end


class Paper < Choice
  def initialize()
    super('paper')
  end
end


class Scissors < Choice
  def initialize()
    super('scissors')
  end
end




r = Rock.new
p = Paper.new
s = Scissors.new

puts r.beats(s)
puts r.beats(p)
puts r.beats(r)
