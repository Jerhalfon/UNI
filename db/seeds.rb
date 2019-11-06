# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "creating data"

loca1 = Location.create(country: "Belgium", city: "Brussels")
loca2 = Location.create(country: "Belgium", city: "Antwerp")
loca3 = Location.create(country: "Belgium", city: "Namur")

uni1 = University.create(name: "ULB", location: loca1 )
uni2 = University.create(name: "UA", location: loca2 )
uni3 = University.create(name: "UN", location: loca3 )

cat1 = Category.create(name: "Business")
cat2 = Category.create(name: "Law")
cat3 = Category.create(name: "Others")


prog1 = Program.create(university: uni1, category: cat1, name: "Business Administration", price: "0", level: "Undergraduate", duration: "24", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?")

prog2 = Program.create(university: uni2, category: cat2, name: "European Law", price: "69", level: "Undergraduate", duration: "12", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?")

prog3 = Program.create(university: uni3, category: cat3, name: "International Relations", price: "420", level: "Graduate", duration: "24", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?")

