# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

blogposts = Blogpost.create([{name: "cj", city: "la", state: "ca", title: "first post", content: "hello saints"}, {name: "rj", city: "la", state: "ca", title: "second post", content: "hi everyone!"}, {name: "nd", city: "la", state: "ca", title: "third post", content: "ptl!"}])