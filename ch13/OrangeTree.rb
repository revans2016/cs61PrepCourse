class Tree
	def initialize
		@height = 0
		@orange_count = 0
		@alive = true
	end

	def height 
		if @alive
			@height
		else
			'This tree is dead and isn\'t very tall'
		end
	end

	def orange_count
		if @alive
			@orange_count
		else
			'Dead trees don\'t have oranges'
		end
	end

	def one_year_passes
		if @alive
			@height = @height + 0.2
			@orange_count = 0

			if @height > 10 && rand(2) > 0
				@alive = false
			elsif @height > 3
				@orange_count = (@height*4).to_i
				"This year the tree grew to #{@height}m tall, and grew #{@orange_count} oranges. Congrats."
			else
				"This year your tree grew to #{@height}m tall, but isn\'t old enough to grow fruit."
			end
		else
			'One year later, your tree is still dead.'
		end
	end

	def orange_pick
		if @alive
			if @orange_count > 0 
				@orange_count = @orange_count - 1
				'You picked an orange! Yay!'
			else
				'You didn\'t find any oranges'
			end
		else
			'Dead trees don\'t grow fruit!'
		end
	end
end

the_tree = Tree.new
10.times do 
	the_tree.one_year_passes
end

puts(the_tree.one_year_passes)
puts(the_tree.orange_count)
puts(the_tree.height)
puts(the_tree.one_year_passes)
puts(the_tree.one_year_passes)
puts(the_tree.one_year_passes)
puts(the_tree.one_year_passes)
puts(the_tree.one_year_passes)
puts(the_tree.height)
puts(the_tree.orange_count)
puts(the_tree.orange_pick)
				