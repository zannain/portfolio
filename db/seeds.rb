# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |n|
	Blog.create(
		title: "Blog-#{n}",
		body: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Maxime provident, odit, earum architecto deleniti corrupti aliquam delectus facere vero quidem doloribus, sunt, excepturi quos omnis vel quisquam culpa enim? Dolorem!")
end
