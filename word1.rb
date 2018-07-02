print 'input a word: '
word = gets.chomp.downcase
puts "here's the word back to front: #{word.reverse}"

# https://tobilehman.com/blog/2012/06/11/anagrams-of-words-in-ruby/
class String
  def anagram
    self.split(//).permutation.map { |a| a.join }
  end
end

ana = word.anagram
alength = ana.length
num = 1 + rand(alength)

print 'try guessing the anagram the program has generated: '

huan = ''
while huan != ana[num] && huan != 'n'
  huan = gets.chomp.downcase
  if huan == ana[num]
    puts "you've guessed correctly, the game has generated #{ana[num]} "
  elsif huan != 'n'
    puts "that's not right, try again. Use (n) to exit"
  end

end

puts "here's the anagram of the word #{word}, the game has generated: #{ana[num]}"

#  char.shuffle.join 
