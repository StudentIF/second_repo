class Choice
  def initialize(value)
    @value = value
  end

  def value()
    @value
  end  
end

class Rock < Choice
  def initialize()
    super('rock')
  end

  def beats(other)
    if other.value == 'scissors'
    .. win
    else
    .. lose
  end
end

class Paper < Choice
end

class Scissors < Choice
end


# get a value from player

def get_choice(s)
  if s == "rock"
    Rock.new
  else
  ......
  end
end


if value == 'rock'
  hu = Rock.new


one  = Rock.new
two = Scisors.new

if(one.beats(two))
{
  .. one wins
}
else
{
  .. two wins
}
