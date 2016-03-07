
class Post

	attr_accessor :author, :comments, :date, :title, :detail

	def initialize(author, title, detail)
		@author = author
		@title = title
		@detail = detail 
		@comments = []
		@date = Time.now
	end
end


