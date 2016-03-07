
require_relative 'Blog'
require_relative 'Post'
require_relative 'Comment'
require_relative 'User'

blog = Blog.new

user1 = User.new("adamdahan")
user2 = User.new("Sharkman")

post1 = Post.new(user1, "My awesome post", "These are the details of my blog post")

post1.comments << Comment.new(user2, "Your post stinks")
post1.comments << Comment.new(user1, "No it doesn't")
blog.posts << post1

for post in blog.posts 
	p "Blog post"
	p "========"
	p "#{post.title} by #{post.author.username}"
	p "Comments for blog post"
	p "==========="
	for comment in post.comments 
		p "#{comment.text} by #{comment.author.username}" 
	end
end
