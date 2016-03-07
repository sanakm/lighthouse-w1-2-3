class Box
	
	def initialize(length, width, height)
		@length = length
		@width = width
		@height = height
	end

	def volume
		@length * @width * @height
	end

	def canFit(some_other_box)
		p " #{volume} / #{some_other_box.volume} = #{volume / some_other_box.volume}" 
		volume / some_other_box.volume
	end
end
