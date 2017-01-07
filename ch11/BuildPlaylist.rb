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

songs = shuffle(Dir['**/*.song'])
File.open 'playlist.m3u', 'w' do |f|
	songs.each do |song|
		f.write song+"\n"
	end
end
puts 'Done!!'