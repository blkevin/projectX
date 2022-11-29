# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "Deleting students"
students = User.student
students.destroy_all

puts "Creating students"
s1 = User.create!(first_name: "Gabriel", last_name: "de Monts", age: 17, email: "gabriel@gmail.com", password: "123456", description: "Bachelier en quete de renseignements sur l'industrie du luxe", status: :student)
s2 = User.create!(first_name: "Robin", last_name: "Rettien", age: 17, email: "robin@gmail.com", password: "123456", description: "Bachelier en quete d'une formation qui permettra de faire de l'argent très rapidement", status: :student)
s3 = User.create!(first_name: "Shayneze", last_name: "Megady", age: 16, email: "shayneze@gmail.com", password: "123456", description: "Etudiante à la recherche de renseignements sur le métier d'avocat", status: :student)
s4 = User.create!(first_name: "Mehdi", last_name: "Rachid", age: 18, email: "mehdi@gmail.com", password: "123456", description: "Intéréssé par le développement web", status: :student)
s5 = User.create!(first_name: "Kevin", last_name: "Blakime", age: 17, email: "kevin@gmail.com", password: "123456", description: "Futur chef en quete de skills de cheffing", status: :student)
s6 = User.create!(first_name: "Jean", last_name: "Dupont", age: 18, email: "jeanot@gmail.com", password: "123456", description: "Intéréssé par le travail du bois (menuiserie/charpente)", status: :student)
s7 = User.create!(first_name: "Nicolas", last_name: "Bernard", age: 19, email: "nicolas@gmail.com", password: "123456", description: "J'aimerais tout quitter pour me lancer dans le rap", status: :student)
s8 = User.create!(first_name: "Julie", last_name: "Martin", age: 16, email: "julie@gmail.com", password: "123456", description: "J'aimerais faire une carrière au service de l'Etat", status: :student)
s9 = User.create!(first_name: "Madeleine", last_name: "Robert", age: 17, email: "madeleine@gmail.com", password: "123456", description: "Intéréssée par l'artisanat", status: :student)
s10 = User.create!(first_name: "Jean", last_name: "Durand", age: 18, email: "jean@gmail.com", password: "123456", description: "Etudiant intéréssé par le cinema", status: :student)

puts "Deleting professionals"
mentors = User.mentor
mentors.destroy_all

puts "Creating professionals"
m1 = User.create!(first_name: "Paul", last_name: "Portier", age: 30, email: "paul@gmail.com", password: "123456", description: "Meilleur dev en région parisienne", status: :mentor)
m2 = User.create!(first_name: "Monica", last_name: "Bellucci", age: 58, email: "monica@gmail.com", password: "123456", description: "Actrice sans prétention", status: :mentor)
m3 = User.create!(first_name: "Théobald", last_name: "de Bentzmann", age: 32, email: "theobald@gmail.com", password: "123456", description: "Born leader - un chef c'est fait pour cheffer", status: :mentor)
m4 = User.create!(first_name: "Eric", last_name: "Dupont-Moretti", age: 61, email: "erci@gmail.com", password: "123456", description: "Avocat et garde des Sceaux", status: :mentor)
m5 = User.create!(first_name: "Jonathan", last_name: "Cohen", age: 42, email: "jonathan@gmail.com", password: "123456", description: "Homme le plus drole de France", status: :mentor)
m6 = User.create!(first_name: "Kaaris", last_name: "Okou Gnakouri", age: 42, email: "kaaris@gmail.com", password: "123456", description: "tchoin thcoin tchoin", status: :mentor)

puts "Deleting institutions"
Institution.destroy_all

puts "Creating institutions"
i1 = Institution.create!(name: "ESCP Business School", description: "Let's empower and lead the world in the right direction")
i2 = Institution.create!(name: "Le Wagon", description: "Accélérez votre carrière, formez-vous aux métiers de la tech")
