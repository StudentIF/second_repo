print 'Which times table would you like to see? '
times = gets.chomp.to_i
for nn in 1..10 do
  puts "#{nn} x #{times} = #{times*nn}"
end
