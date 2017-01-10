puts 'What is your birth year? (####)'
year = gets.chomp.to_i
puts 'What is your birth month? (1-12)'
month = gets.chomp.to_i
puts 'What is your birthday? (##)'
day = gets.chomp.to_i

their_birthday = Time.local(year, month, day)
the_time = Time.new

age = 1
while Time.local(year + age, month, day) <= the_time
	puts 'SPANK'
	age = age + 1 
end 