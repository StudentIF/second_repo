
class Annagr
# attr_reader @words

  def initialize
    @words = []
  end

  def addwords(a)
    @words << a
  end

  def showwords
    puts @words
  end


  def check(huan)
    count = 0
    @words.each do |word|
      waray = word.split(//)
      haray = huan.split(//)
      if waray.sort == haray.sort
        puts "#{huan} is an anagram of the word #{word}"
        count += 1
      end
    end

    if count == 0
      puts "#{huan} is not a valid anagram of any of the given the words."
    end
  end
end

myannagram = Annagr.new
# myannagram.addwords('each' , 'these' , 'exercises' , 'starts' , 'simple' )
myannagram.addwords('each' )
myannagram.addwords('these' )
myannagram.addwords('exercises')
myannagram.addwords('starts' )
myannagram.addwords('simple' )

# words = ['each' , 'these' , 'exercises' , 'starts' , 'simple' ]
puts "here's a list of 5 words, chose one and scrable it up"
# puts Annagr.words

myannagram.showwords

huan = gets.chomp.downcase
myannagram.check(huan)
