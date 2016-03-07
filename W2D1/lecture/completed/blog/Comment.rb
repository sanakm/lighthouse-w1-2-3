
class Comment 
	
	attr_accessor :author, :text, :date

	def initialize(author, text)
		@author = author
		@text = text
		@date = Time.now
	end
end

