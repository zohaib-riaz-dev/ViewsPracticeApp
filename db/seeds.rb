# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb
post = Post.create(title: 'Sample Post 1', content: 'This is a sample post1')
post.comments.create(body: 'hello First comment on the sample post1')
# post2 = Post.create(title: 'Sample Post 2', content: 'This is a sample post2')
# post2.comments.create(body: 'hi First comment on the sample post2')
# post3 = Post.create(title: 'Sample Post 3', content: 'This is a sample post3')
# post3.comments.create(body: 'ha First comment on the sample post3')
