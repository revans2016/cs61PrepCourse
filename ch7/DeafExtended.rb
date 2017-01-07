goodbyes = 0
while true
	puts 'HI THERE MY DEAREST GRANDCHILD! GIVE GRANDMA A HUG!'
	words = gets.chomp 
	if words == 'BYE'
		goodbyes = goodbyes + 1
	else
		goodbyes = 0
	end
	if goodbyes >= 3
		puts 'SEE YA SWEETIE!'
		break
	end
	if words == words.upcase && words != 'BYE'
		puts 'NO, NOT SINCE ' + (rand(1950-1930)+1930).to_s + '!' 
	else 
		if words != 'BYE'
			puts 'HUH?! SPEAK UP, SONNY!'
		else
		end
	end
end

