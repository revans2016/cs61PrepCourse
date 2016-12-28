#Bigger, better facorite number 
puts 'Hi there, what is your favorite number?'
originalnumber = gets.chomp.to_i 

newnumber = originalnumber + 1
newnumber = newnumber.to_s 
puts 'Oh! But ' + newnumber + ' is a bigger and better number!'