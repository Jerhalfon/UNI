# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "creating data"

Favorite.delete_all
Review.delete_all
Program.delete_all
University.delete_all
Location.delete_all
Category.delete_all
User.delete_all


loca1 = Location.create(country: "Belgium", city: "Brussels")
loca2 = Location.create(country: "Belgium", city: "Antwerp")
loca3 = Location.create(country: "Belgium", city: "Namur")
loca4 = Location.create(country: "England", city: "London")

uni1 = University.create(name: "ULB", location: loca1)
uni1.remote_photo_url = "https://images.unsplash.com/photo-1527891751199-7225231a68dd?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1650&q=80"
uni1.save
uni2 = University.create(name: "Universiteit van Antwerpen", location: loca2)
uni2.remote_photo_url = "https://images.unsplash.com/photo-1537888692311-8a7fb3e9f374?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=975&q=80"
uni2.save
uni3 = University.create(name: "Université de Namur", location: loca3)
uni3.remote_photo_url = "https://images.unsplash.com/photo-1474650919751-b7e21a1b180f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjF9&auto=format&fit=crop&w=1650&q=80"
uni3.save

cat1 = Category.create(name: "Business")
cat2 = Category.create(name: "Law")
cat3 = Category.create(name: "Others")


prog1 = Program.create(university: uni1, category: cat1, name: "Business Administration", price: "0", level: "Undergraduate", duration: "24", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?")
prog2 = Program.create(university: uni2, category: cat2, name: "European Law", price: "69", level: "Undergraduate", duration: "12", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?")
prog3 = Program.create(university: uni3, category: cat2, name: "International Law", price: "69", level: "Undergraduate", duration: "12", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?")
prog4 = Program.create(university: uni1, category: cat2, name: "Belgian Law", price: "100", level: "Undergraduate", duration: "12", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?")
prog5 = Program.create(university: uni2, category: cat2, name: "European Law", price: "69", level: "Undergraduate", duration: "12", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?")
prog6 = Program.create(university: uni3, category: cat3, name: "International Relations", price: "420", level: "Graduate", duration: "24", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?")
prog7 = Program.create(university: uni2, category: cat2, name: "Fiscal Law", price: "200", level: "Undergraduate", duration: "12", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?")
prog8 = Program.create(university: uni2, category: cat2, name: "French Law", price: "0", level: "Undergraduate", duration: "12", description: "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Architecto quidem, officiis labore? Delectus maxime officia, saepe cumque asperiores perspiciatis fuga, optio, repellat laborum voluptatum eos nesciunt enim placeat numquam doloremque?")



user1 = User.create(email: "user1@email.com", password: "123456")
user2 = User.create(email: "user2@email.com", password: "123456")
user3 = User.create(email: "user3@email.com", password: "123456")

favo1 = Favorite.create(user: user1, program: prog1)
favo2 = Favorite.create(user: user1, program: prog2)

review1 = Review.create(content: "This university has the worst professors don't apply here!", rating: 1, title: "prog1 review", program: prog1, user: user1)
review2 = Review.create(content: "Really cool University! Recomended ^^", rating: 5, title: "prog2 review", program: prog2, user: user2)
review3 = Review.create(content: "Good professors but reaaaly boring!", rating: 3, title: "prog3 review", program: prog3, user: user3)




