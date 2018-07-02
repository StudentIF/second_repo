puts 'To output tables 1 - 12, chose -1 '
print 'Which times table would you like to see? '
times = gets.chomp.to_i

if times == -1
  mf = 1
  mt = 12
else
  mf = times
  mt = times
end

for mm in mf..mt do
  for nn in 1..10 do
    puts "#{nn} x #{mm} = #{mm*nn}"
  end
  puts "\n"
end
