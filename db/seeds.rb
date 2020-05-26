# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

categories = Category.create([{id: 1, name: "books"}, {id: 2, name: "movies"}, {id: 3, name: "anime"}, {id: 4, name: "tv shows (live-action)"}, {id: 5, name: "cartoons"}, {id: 6, name: "manga"}, {id: 7, name: "other"}])
media = Medium.create([
    {name: "Harry Potter", creators: "JK Rowling", category_id: 1}, 
    {name: "Schitt's Creek", creators: "Dan and Eugene Levy", category_id: 4},
    {name: "Percy Jackson", creators: "Rick Riordan", category_id: 1},
    {name: "Fullmetal Alchemist", creators: "Hiromu Arakawa", category_id: 3},
    {name: "Up", creators: "Pixar Animation Studios", category_id: 2},
    {name: "Snowpiercer", creators: "Bong Joon-ho, Bong and Kelly Masterson", category_id: 2},
    {name: "She-Ra and the Princesses of Power", creators: "Noelle Stevenson, DreamWorks Animation Television", category_id: 5},
    {name: "Brooklyn Nine-Nine", creators: "Dan Goor and Michael Schur", category_id: 4},

    {name: "My Hero Academia", creators: "Kōhei Horikoshi", category_id: 6}, 
    {name: "Monthly Girls' Nozaki-kun", creators: "Izumi Tsubaki", category_id: 6},
    {name: "Soul Eater", creators: "Atsushi Ōkubo, Bones Inc", category_id: 3},
    {name: "The Mirror Visitor Quartet", creators: "Christelle Dabos", category_id: 1},
    {name: "Sense and Sensibility", creators: "Jane Austen", category_id: 1}
])

