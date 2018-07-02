class TimesTable

  def initialize
  end

  def calc(times)
    for nn in 1..10 do
      puts "#{nn} x #{times} = #{times*nn}"
    end
    puts "\n"
  end

end



puts 'To output tables 1 - 12, chose -1 '
print 'Which times table would you like to see? '
times = gets.chomp.to_i

times_table = TimesTable.new

if times == -1
  mf = 1
  mt = 12
else
  mf = times
  mt = times
end

for mm in mf..mt do
  times_table.calc(mm)
end
