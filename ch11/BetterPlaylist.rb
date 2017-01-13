# dive array into two different arrays
# shuffle the two array individually
# join two new arrays
def shuffle arr
	shuf = []
	while arr.length>0
		rand_index = rand(arr.length)
		curr_index = 0
		new_arr = []
		arr.each do |item|
			if curr_index == rand_index
				shuf.push item
			else 
				new_arr.push item
			end
			curr_index = curr_index + 1
		end
		arr = new_arr
	end
	shuf
end


def music_shuffle filenames
	half_len = filenames.length/2
	new_array = []
	my_index = 0
	filenames.each do |thing|
		if  my_index == half_len
			break
		else
			filenames.pop thing
			new_array.push thing
		end
		my_index = my_index + 1
	end
	shuffle(new_array)
	shuffle(filenames)
	final_array = filenames + new_array
	filenames = final_array
end 

songz = ['rr/eee', 'AAA/bbb', 'dog/cat', 'penguin/land', 'hello/kitty', 'fun/sun']

puts(music_shuffle(songz))