# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'date'

Review.destroy_all


Review.create(name:"Alexis C", review: "This is a review!", date_created: DateTime.now)
Review.create(name:"Melissa C", review: "This is another review!", date_created: DateTime.now)