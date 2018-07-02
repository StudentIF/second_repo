for nn in 1..100 do
  if nn % 3 == 0 && nn % 5 == 0
    print 'fizz-buzz, '
  elsif nn % 3 == 0
    print 'fizz, '
  elsif nn % 5 == 0
    print 'buzz, '
  else
    print "#{nn}, "
  end
end
print "\n"
