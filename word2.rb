words = ['each' , 'these' , 'exercises' , 'starts' , 'simple' ]
puts "here's a list of 5 words, chose one and scrable it up"
puts words

huan = gets.chomp.downcase

count = 0
words.each do |word|
#  if word.length == huan.length
     waray = word.split(//)
     haray = huan.split(//)
     if waray.sort == haray.sort
        puts "#{huan} is an anagram of the word #{word}"
        count += 1
     end
#  end
end

if count == 0
  puts "#{huan} is not a valid anagram of any of the given the words."
end
