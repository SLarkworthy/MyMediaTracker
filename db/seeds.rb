# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([{id: 1, name: "book"}, {id: 2, name: "movie"}, {id: 3, name: "anime"}, {id: 4, name: "tv show (live-action)"}, {id: 5, name: "cartoons"}, {id: 6, name: "manga"}, {id: 7, name: "other"}])
media = Medium.create([{name: "Harry Potter", creators: "JK Rowling", category_id: 1}, {name: "Schitt's Creek", creators: "Dan and Eugene Levy", category_id: 4}])

