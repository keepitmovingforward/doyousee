# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Magician.destroy_all
Performance.destroy_all
Trick.destroy_all
PerformanceTrick.destroy_all

#Magician Seed Data
tuxedo_mask = Magician.find_or_create_by(name: "Tuxedo Mask", age: 35, location: "Japan")
billy_bob = Magician.find_or_create_by(name: "Billy Bob Thorton", age: 64, location: "USA")
peyton = Magician.find_or_create_by(name: "Mysterious Peytonious", age: 28, location: "New Zealand")
rob = Magician.find_or_create_by(name: "Razzmatazz", age: 34, location: "Korea")

#Performance Seed Data
performance1 = Performance.find_or_create_by(date: DateTime.new(2019, 9, 4).strftime("%m-%d-%Y"), venue: "The Pantages")
performance2 = Performance.find_or_create_by(date: DateTime.new(2019, 11, 2).strftime("%m-%d-%Y"), venue: "Orpheum")
performance3 = Performance.find_or_create_by(date: DateTime.new(2019, 12, 25).strftime("%m-%d-%Y"), venue: "The Anthem")
performance4 = Performance.find_or_create_by(date: DateTime.new(2017, 1, 7).strftime("%m-%d-%Y"), venue: "9:30 Club")
performance5 = Performance.find_or_create_by(date: DateTime.new(2018, 2, 7).strftime("%m-%d-%Y"), venue: "Madison Square Garden")

#Tricks Seed Data
trick1 = Trick.find_or_create_by(name: "Levitation", difficulty: 8, image: "https://media.giphy.com/media/VwDWltKhAHZGo/giphy.gif")
trick2 = Trick.find_or_create_by(name: "Teleportation", difficulty: 10, image: "https://media1.giphy.com/media/uKeXA33FO8eZ2/giphy.gif")
trick3 = Trick.find_or_create_by(name: "Impalement", difficulty: 7, image: "https://i.imgur.com/DQ7I0cg.gif")
trick4 = Trick.find_or_create_by(name: "Saw in Half", difficulty: 7, image: "https://media3.giphy.com/media/XPsTTWHXz9Qc0/giphy.gif")

tuxedo_mask.performances << [performance1, performance2]
billy_bob.performances << [performance3]
peyton.performances << [performance4]
rob.performances << [performance5]

performance1.tricks << [trick1, trick3, trick4]
performance1.save
performance2.tricks << [trick2, trick3, trick4]
performance2.save
performance3.tricks << [trick1, trick2]
performance3.save
performance4.tricks << [trick3, trick4]
performance4.save
performance5.tricks << [trick1, trick2, trick3, trick4]
performance5.save
