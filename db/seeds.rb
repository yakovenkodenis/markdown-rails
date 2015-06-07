# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Post.delete_all

Post.create(
	id: 1,
	title: "My very first post.",
	published_at: Time.now - 1.day,
	body:
	%Q{### There Is Something You Should Know!

	This is my very first post using Markdown!

	How do you like it?
	}
)

Post.create(
	id: 2,
	title: "My second post.",
	published_at: Time.now,
	body:
	%Q{### My List of Things To Do:

	Here's just a list of things:

	* write more posts
	* write even more posts
	* write even more posts!
	}
)