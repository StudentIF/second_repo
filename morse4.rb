morse={}
morse["A"]= ".-"
morse["B"]= "-..."
morse["C"]= "-.-."
morse["D"]= "-.."
morse["E"]= "."
morse["F"]= "..-."
morse["G"]= "--."
morse["H"]= "...."
morse["I"]= ".."
morse["J"]= ".---"
morse["K"]= "-.-"
morse["L"]= ".-.."
morse["M"]= "--"
morse["N"]= "-."
morse["O"]= "---"
morse["P"]= ".--."
morse["Q"]= "--.-"
morse["R"]= ".-."
morse["S"]= "..."
morse["T"]= "-"
morse["U"]= "..-"
morse["V"]= "...-"
morse["W"]= ".--"
morse["X"]= "-..-"
morse["Y"]= "-.--"
morse["Z"]= "--.."
morse[0.to_s]= "-----"
morse[1.to_s]= ".----"
morse[2.to_s]= "..---"
morse[3.to_s]= "...--"
morse[4.to_s]= "....-"
morse[5.to_s]= "....."
morse[6.to_s]= "-...."
morse[7.to_s]= "--..."
morse[8.to_s]= "---.."
morse[9.to_s]= "----."

puts "input your text here: "
text = gets.chomp

words = text.split(" ")

words.each do |word|
  letters = word.split(//)
  letters.each do |letter|

    if  morse.key?(letter.upcase)
       print morse[letter.upcase] + "  "
    else
       puts "\ninvalid character #{letter} \n"
    end
  end
  print "    "
end
puts "\n"
