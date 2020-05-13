# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([{name: "book"}, {name: "movie"}, {name: "anime"}, {name: "tv show (live-action"}, {name: "cartoons"}, {name: "manga"}, {name: "other"}])
media = Medium.create([{name: "Harry Potter", creators: "JK Rowling", category_id: 1}, {name: "Schitt's Creek", creators: "Dan and Eugene Levy", category_id: 4}])

