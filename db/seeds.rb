# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'open-uri'

puts "Deleting experiences"
Experience.destroy_all

puts "Creating experiences"
# creating experiences for Paul Portier
exp1 = Experience.create!(position: "Developpeur web", sector: "luxe", industry: "digital", start_date: "2016-01-01")
exp2 = Experience.create!(position: "Barman", sector: "restauration", industry: "autre activité de services", start_date: "2014-01-01")
# creating experiences for Carla Bruni
exp3 = Experience.create!(position: "Acteur", sector: "cinema", industry: "artisanat", start_date: "1995-01-01")
exp4 = Experience.create!(position: "Chanteur", sector: "musique", industry: "artisanat", start_date: "2000-01-01")
# creating experiences for Théobald de Bentzmann
exp5 = Experience.create!(position: "PDG", sector: "evenementiel", industry: "service B2B", start_date: "2017-01-01")
exp6 = Experience.create!(position: "Analyste fianancier", sector: "finance", industry: "services financiers", start_date: "2013-01-01")
# creating experiences for Eric Dupont-Moretti
exp7 = Experience.create!(position: "Ministre de la Justice", sector: "publique", industry: "administration publique", start_date: "2020-01-01")
exp8 = Experience.create!(position: "Avocat", sector: "juridique", industry: "activité juridique", start_date: "1984-01-01")
# creating experiences for Jonathan Cohen
exp9 = Experience.create!(position: "Acteur", sector: "cinema", industry: "artisanat", start_date: "1995-01-01")
exp10 = Experience.create!(position: "Commercial", sector: "immobilier", industry: "activité immobilière", start_date: "2000-01-01")
# creating experiences for Kaaris
exp11 = Experience.create!(position: "Acteur", sector: "cinema", industry: "artisanat", start_date: "2016-01-01")
exp12 = Experience.create!(position: "Chanteur", sector: "musique", industry: "artisanat", start_date: "2013-01-01")

puts "Deleting institutions"
Institution.destroy_all

puts "Creating institutions"
i1 = Institution.create!(name: "Le Wagon", description: "Accélérez votre carrière, formez-vous aux métiers de la tech")
i2 = Institution.create!(name: "Conservatoire nationale supérieur d'art dramatique", description: "Le Conservatoire National Supérieur d’Art Dramatique – PSL (CNSAD-PSL) est un établissement d’enseignement supérieur placé sous la tutelle du ministère chargé de la culture")
i3 = Institution.create!(name: "ESCP Business School", description: "Let's empower and lead the world in the right direction")
i4 = Institution.create!(name: "Université Lille 2", description: "Inspirons demain")
i5 = Institution.create!(name: "Université Paris-Panthéon-Assas", description: "Pour l'éducation, pour la nation")
i6 = Institution.create!(name: "Les compagnons du devoir", description: "Association ouvrière des compagnons du devoir et du tour de France")

puts "Deleting educations"
Education.destroy_all

puts "Creating educations"
ed1 = Education.create!(start_date: "2016-10-20", degree_level: "Bootcamp", field: "Développement Web")
ed2 = Education.create!(start_date: "1990-09-01", degree_level: "License", field: "Theatre & cinema")
ed3 = Education.create!(start_date: "2000-09-01", degree_level: "Master", field: "Finance")
ed4 = Education.create!(start_date: "2000-09-01", degree_level: "Master", field: "Droit")
ed5 = Education.create!(start_date: "1979-09-01", degree_level: "Master", field: "Theatre")
ed6 = Education.create!(start_date: "1979-09-01", degree_level: "License", field: "Histoire")

puts "Deleting students"
students = User.student
students.destroy_all

puts "Creating students"
s1 = User.create!(first_name: "Gabriel", last_name: "de Monts", age: 17, email: "gabriel@gmail.com", password: "123456", description: "Bachelier en quete de renseignements sur l'industrie du luxe", status: :student)
s2 = User.create!(first_name: "Robin", last_name: "Rettien", age: 17, email: "robin@gmail.com", password: "123456", description: "Bachelier en quete d'une formation qui permettra de faire de l'argent très rapidement", status: :student)
s3 = User.create!(first_name: "Shayneze", last_name: "Megady", age: 16, email: "shayneze@gmail.com", password: "123456", description: "Etudiante à la recherche de renseignements sur le métier d'avocat", status: :student)
s4 = User.create!(first_name: "Mehdi", last_name: "Rachid", age: 18, email: "mehdi@gmail.com", password: "123456", description: "Intéréssé par le développement web", status: :student)
s5 = User.create!(first_name: "Kevin", last_name: "Blakime", age: 17, email: "kevin@gmail.com", password: "123456", description: "Futur chef en quete de skills de cheffing", status: :student)
s6 = User.create!(first_name: "Jean", last_name: "Dupont", age: 18, email: "jean@gmail.com", password: "123456", description: "Intéréssé par le travail du bois (menuiserie/charpente)", status: :student)
s7 = User.create!(first_name: "Nicolas", last_name: "Bernard", age: 19, email: "nicolas@gmail.com", password: "123456", description: "J'aimerais tout quitter pour me lancer dans le rap", status: :student)
s8 = User.create!(first_name: "Julie", last_name: "Martin", age: 16, email: "julie@gmail.com", password: "123456", description: "J'aimerais faire une carrière au service de l'Etat", status: :student)
s9 = User.create!(first_name: "Madeleine", last_name: "Robert", age: 17, email: "madeleine@gmail.com", password: "123456", description: "Intéréssée par l'artisanat", status: :student)
s10 = User.create!(first_name: "Baptiste", last_name: "Durand", age: 18, email: "baptiste@gmail.com", password: "123456", description: "Etudiant intéréssé par le cinema", status: :student)

# attaching pictures to students
s1.photo.attach(
  io: URI.open('https://avatars.githubusercontent.com/u/113995804\?v\=4.jpg'),
  filename: 'gabriel.jpg',
  content_type: 'image/jpg'
)
s2.photo.attach(
  io: URI.open('https://avatars.githubusercontent.com/u/112618478\?v\=4.jpg'),
  filename: 'robin.jpg',
  content_type: 'image/jpg'
)
s3.photo.attach(
  io: URI.open('https://avatars.githubusercontent.com/u/62299446\?v\=4.jpg'),
  filename: 'sous-chef.jpg',
  content_type: 'image/jpg'
)
s4.photo.attach(
  io: URI.open('https://avatars.githubusercontent.com/u/115085959\?v\=4.jpg'),
  filename: 'mehdi.jpg',
  content_type: 'image/jpg'
)
s5.photo.attach(
  io: URI.open('https://avatars.githubusercontent.com/u/115102708\?v\=4.jpg'),
  filename: 'chef.jpg',
  content_type: 'image/jpg'
)

puts "Deleting professionals"
mentors = User.mentor
mentors.destroy_all

puts "Creating professionals"
m1 = User.create!(first_name: "Paul", last_name: "Portier", age: 30, email: "paul@gmail.com", password: "123456", description: "Meilleur dev en région parisienne", status: :mentor)
m2 = User.create!(first_name: "Carla", last_name: "Bruni", age: 58, email: "carla@gmail.com", password: "123456", description: "Actrice/chanteuse sans prétention", status: :mentor)
m3 = User.create!(first_name: "Théobald", last_name: "de Bentzmann", age: 32, email: "theobald@gmail.com", password: "123456", description: "Born leader - un chef c'est fait pour cheffer", status: :mentor)
m4 = User.create!(first_name: "Eric", last_name: "Dupont-Moretti", age: 61, email: "erci@gmail.com", password: "123456", description: "Avocat et garde des Sceaux", status: :mentor)
m5 = User.create!(first_name: "Jonathan", last_name: "Cohen", age: 42, email: "jonathan@gmail.com", password: "123456", description: "Homme le plus drole de France", status: :mentor)
m6 = User.create!(first_name: "Kaaris", last_name: "Okou Gnakouri", age: 42, email: "kaaris@gmail.com", password: "123456", description: "tchoin thcoin tchoin", status: :mentor)

# attaching pictures to students
m1.photo.attach(
  io: URI.open('https://avatars.githubusercontent.com/u/54004476?v=4'),
  filename: 'paul.jpg',
  content_type: 'image/jpg'
)
m2.photo.attach(
  io: URI.open('https://fr.wikipedia.org/wiki/Carla_Bruni#/media/Fichier:Carla_Cannes_2021.jpg'),
  filename: 'carla.jpg',
  content_type: 'image/jpg'
)
m3.photo.attach(
  io: URI.open('https://mobile.twitter.com/TBentzmann/photo.jpg'),
  filename: 'theobald.jpg',
  content_type: 'image/jpg'
)
m4.photo.attach(
  io: URI.open('https://img.lemde.fr/2022/10/03/0/0/1920/1280/1328/0/45/0/c358f49_1664837882097-000-324d4x7.jpg'),
  filename: 'dupont-moretti.jpg',
  content_type: 'image/jpg'
)
m5.photo.attach(
  io: URI.open('https://encrypted-tbn0.gstatic.com/images\?q\=tbn:ANd9GcRBj7gOowVXyV992ASsSALEu8DxoD1LznnGa9qsyYzT6VgT01FAsOQDbut6oyEurNThggE\&usqp\=CAU.jpg'),
  filename: 'joko.jpg',
  content_type: 'image/jpg'
)
m6.photo.attach(
  io: URI.open('https://img-4.linternaute.com/PFL-vP6OOIW64lzhGpGOj_5rdQ0=/1500x/smart/4635c22a2fa74f97aa2df72b18392838/ccmcms-linternaute/39249072.jpg'),
  filename: 'kaaris.jpg',
  content_type: 'image/jpg'
)

# matching experiences with mentors
exp1.user_id = m1.id
exp2.user_id = m1.id
exp3.user_id = m2.id
exp4.user_id = m2.id
exp5.user_id = m3.id
exp6.user_id = m3.id
exp7.user_id = m4.id
exp8.user_id = m4.id
exp9.user_id = m5.id
exp10.user_id = m5.id
exp11.user_id = m6.id
exp12.user_id = m6.id

# matching educations with institutions and mentors
ed1.institution_id = i1.id
ed1.user_id = m1.id

ed2.institution_id = i2.id
ed2.user_id = m2.id

ed3.institution_id = i3.id
ed3.user_id = m3.id

ed4.institution_id = i4.id
ed4.user_id = m4.id

ed5.institution_id = i2.id
ed5.user_id = m5.id

ed6.institution_id = i5.id
ed6.user_id = m6.id
