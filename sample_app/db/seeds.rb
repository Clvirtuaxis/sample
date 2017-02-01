# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(:name => "seed-generated product", :description => "I also created this product without using the HTML form!")

Product.create(name: "Oculus Touch Controller", description: "This hand-trigger would become the common method for grabbing virtual items, leaving the trigger finger free for other actions like shooting or activating whatever was held. It will be tracked using the same positional tracking camera that senses the headset.")
