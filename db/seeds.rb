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

puts "Deleting educations"
Education.destroy_all

puts "Deleting institutions"
Institution.destroy_all

puts "Deleting contents"
Content.destroy_all

puts "Deleting messages"
Message.destroy_all

puts "Deleting meetings"
Meeting.destroy_all

puts "Deleting conversations"
Conversation.destroy_all

puts "Deleting students"
User.student.destroy_all

puts "Deleting professionals"
User.mentor.destroy_all

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
s10 = User.create!(first_name: "Baptiste", last_name: "Durand", age: 18, email: "baptiste@gmail.com", password: "123456", description: "Etudiant intéréssé par le cinema", status: :student)

# attaching pictures to students
s1.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669803288/qn4qjgv7q2lquqa1cgx3.jpg'),
  filename: 'gabriel.jpg',
  content_type: 'image/jpg'
)
s1.save!

s2.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669803357/ct7e9izj5jwelwkqoizi.jpg'),
  filename: 'robin.jpg',
  content_type: 'image/jpg'
)
s2.save!

s3.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669803367/y7ir5np0tztniz27u2rm.jpg'),
  filename: 'sous-chef.jpg',
  content_type: 'image/jpg'
)
s3.save!

s4.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669803333/exalou60pwikuldrw3ly.jpg'),
  filename: 'mehdi.jpg',
  content_type: 'image/jpg'
)
s4.save!

s5.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669803259/wu3egmhzkft5vzn2mguf.jpg'),
  filename: 'chef.jpg',
  content_type: 'image/jpg'
)
s5.save!

s6.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669803297/jfk8mbnj9zb7zqrbyxa8.jpg'),
  filename: 'jean.jpg',
  content_type: 'image/jpg'
)
s6.save!

s7.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669803341/lebnltmamr4a6xdlwbac.jpg'),
  filename: 'nicolas.jpg',
  content_type: 'image/jpg'
)
s7.save!

s8.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669803312/ttucxb1ainldeqsxakhg.jpg'),
  filename: 'julie.jpg',
  content_type: 'image/jpg'
)
s8.save!

s9.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669803322/j5dn4jjlzc9hwqau5sbn.jpg'),
  filename: 'madeleine.jpg',
  content_type: 'image/jpg'
)
s9.save!

s10.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669807643/yhxcgyozwgqucooasmko.jpg'),
  filename: 'baptiste.jpg',
  content_type: 'image/jpg'
)
s10.save!

# professionals
puts "Creating professionals"
m1 = User.create!(first_name: "Paul", last_name: "Portier", age: 30, email: "paul@gmail.com", password: "123456", description: "Meilleur dev en région parisienne", status: :mentor)
m2 = User.create!(first_name: "Carla", last_name: "Bruni", age: 58, email: "carla@gmail.com", password: "123456", description: "Actrice/chanteuse sans prétention", status: :mentor)
m3 = User.create!(first_name: "Théobald", last_name: "de Bentzmann", age: 32, email: "theobald@gmail.com", password: "123456", description: "Born leader - un chef c'est fait pour cheffer", status: :mentor)
m4 = User.create!(first_name: "Eric", last_name: "Dupont-Moretti", age: 61, email: "erci@gmail.com", password: "123456", description: "Avocat et garde des Sceaux", status: :mentor)
m5 = User.create!(first_name: "Jonathan", last_name: "Cohen", age: 42, email: "jonathan@gmail.com", password: "123456", description: "Homme le plus drole de France", status: :mentor)
m6 = User.create!(first_name: "Kaaris", last_name: "Okou Gnakouri", age: 42, email: "kaaris@gmail.com", password: "123456", description: "tchoin thcoin tchoin", status: :mentor)

# attaching pictures to students
m1.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669803349/fwyixkfd0upkyac2teql.jpg'),
  filename: 'paul.jpg',
  content_type: 'image/jpg'
)
m1.save!

m2.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669803542/calx7qycxgvjz5p1ormz.png'),
  filename: 'carla.jpg',
  content_type: 'image/jpg'
)
m2.save!

m3.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669803550/icpjb1bbc18dmb5uq8pg.jpg'),
  filename: 'theobald.jpg',
  content_type: 'image/jpg'
)
m3.save!

m4.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669803277/rf5towbj89ifckxe2toy.jpg'),
  filename: 'eric.jpg',
  content_type: 'image/jpg'
)
m4.save!

m5.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669803305/xxi38wehlvwudiugi5jj.jpg'),
  filename: 'joko.jpg',
  content_type: 'image/jpg'
)
m5.save!

m6.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669806673/th2fgerzn7f8nbgbb6k1.jpg'),
  filename: 'kaaris.jpg',
  content_type: 'image/jpg'
)
m6.save!

puts "Creating experiences"
# creating experiences for Paul Portier
exp1 = Experience.create!(user_id: m1.id, position: "Developpeur web", company: "Le Wagon", sector: "luxe", industry: "digital", start_date: "2016-01-01")
exp2 = Experience.create!(user_id: m1.id, position: "Barman", company: "Café Pop", sector: "restauration", industry: "autre activité de services", start_date: "2014-01-01")
# creating experiences for Carla Bruni
exp3 = Experience.create!(user_id: m2.id, position: "Acteur", company: "Mediapro", sector: "cinema", industry: "artisanat", start_date: "1995-01-01")
exp4 = Experience.create!(user_id: m2.id, position: "Chanteur", company: "Universal Music", sector: "musique", industry: "artisanat", start_date: "2000-01-01")
# creating experiences for Théobald de Bentzmann
exp5 = Experience.create!(user_id: m3.id, position: "PDG", company: "Alchimii", sector: "evenementiel", industry: "service B2B", start_date: "2017-01-01")
exp6 = Experience.create!(user_id: m3.id, position: "Analyste fianancier", company: "Barclays", sector: "finance", industry: "services financiers", start_date: "2013-01-01")
# creating experiences for Eric Dupont-Moretti
exp7 = Experience.create!(user_id: m4.id, position: "Ministre de la Justice", company: "Gouvernement", sector: "publique", industry: "administration publique", start_date: "2020-01-01")
exp8 = Experience.create!(user_id: m4.id, position: "Avocat", company: "Dupont-Moretti Avocat", sector: "juridique", industry: "profession libérale", start_date: "1984-01-01")
# creating experiences for Jonathan Cohen
exp9 = Experience.create!(user_id: m5.id, position: "Acteur", company: "Canal+", sector: "cinema", industry: "artisanat", start_date: "1995-01-01")
exp10 = Experience.create!(user_id: m5.id, position: "Commercial", company: "La Foret", sector: "immobilier", industry: "activité immobilière", start_date: "2000-01-01")
# creating experiences for Kaaris
exp11 = Experience.create!(user_id: m6.id, position: "Acteur", company: "Labyrinthe films", sector: "cinema", industry: "artisanat", start_date: "2016-01-01")
exp12 = Experience.create!(user_id: m6.id, position: "Chanteur", company: "Universal Music", sector: "musique", industry: "artisanat", start_date: "2013-01-01")

puts "Creating institutions"
i1 = Institution.create!(name: "Le Wagon", description: "Accélérez votre carrière, formez-vous aux métiers de la tech")
i2 = Institution.create!(name: "Conservatoire nationale supérieur d'art dramatique", description: "Le Conservatoire National Supérieur d’Art Dramatique – PSL (CNSAD-PSL) est un établissement d’enseignement supérieur placé sous la tutelle du ministère chargé de la culture")
i3 = Institution.create!(name: "ESCP Business School", description: "Let's empower and lead the world in the right direction")
i4 = Institution.create!(name: "Université Lille 2", description: "Inspirons demain")
i5 = Institution.create!(name: "Université Paris-Panthéon-Assas", description: "Pour l'éducation, pour la nation")
i6 = Institution.create!(name: "Les compagnons du devoir", description: "Association ouvrière des compagnons du devoir et du tour de France")

# attaching videos to institutions
i1.video.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/raw/upload/v1669820645/dnhlvy2wewmvvsopaxzt.mp4'),
  filename: 'lewagon.mp4',
  content_type: 'video/mp4'
)
i1.save!

i2.video.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/raw/upload/v1669820645/dnhlvy2wewmvvsopaxzt.mp4'),
  filename: 'lewagon.mp4',
  content_type: 'video/mp4'
)
i2.save!

# attaching images to institutions
filei1 = URI.open("https://etudestech.com/wp-content/uploads/2021/07/lewagon-logo-square-b6124eb974be375884558e4464efce48a9b5664f18422768156364363ecdd1fc.png")
i1.photo.attach(io: filei1, filename: "i1.png", content_type: "image/png")

filei2 = URI.open("https://cnsad.psl.eu/wp-content/uploads/2019/12/logo_CNSAD_PSL.svg")
i2.photo.attach(io: filei2, filename: "i2.png", content_type: "image/png")

filei3 = URI.open("https://upload.wikimedia.org/wikipedia/commons/f/fb/ESCP_Business_School_2020_Logo.jpg")
i3.photo.attach(io: filei3, filename: "i3.png", content_type: "image/png")

filei4 = URI.open("https://image.jimcdn.com/app/cms/image/transf/none/path/s591e1c24fa53fcbb/image/i8cbfef27ff5feadc/version/1478359958/image.png")
i4.photo.attach(io: filei4, filename: "i3.png", content_type: "image/png")

filei5 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Logo_Panth%C3%A9on-Assas.svg/1200px-Logo_Panth%C3%A9on-Assas.svg.png")
i5.photo.attach(io: filei5, filename: "i5.png", content_type: "image/png")

filei6 = URI.open("https://www.compagnons-du-devoir.com/sites/all/themes/compagnons/assets/images/logo-compagnons.png")
i6.photo.attach(io: filei6, filename: "i6.png", content_type: "image/png")

puts "Creating educations"
ed1 = Education.create!(user_id: m1.id, institution_id: i1.id, start_date: "2016-10-20", degree_level: "Bootcamp", field: "Développement Web")
ed2 = Education.create!(user_id: m2.id, institution_id: i2.id, start_date: "1990-09-01", degree_level: "License", field: "Theatre & cinema")
ed3 = Education.create!(user_id: m3.id, institution_id: i3.id, start_date: "2000-09-01", degree_level: "Master", field: "Finance")
ed4 = Education.create!(user_id: m4.id, institution_id: i4.id, start_date: "1981-09-01", degree_level: "Master", field: "Droit")
ed5 = Education.create!(user_id: m5.id, institution_id: i2.id, start_date: "1979-09-01", degree_level: "Master", field: "Theatre")
ed6 = Education.create!(user_id: m6.id, institution_id: i5.id, start_date: "1999-09-01", degree_level: "License", field: "Histoire")

puts "Creating contents"
c1 = Content.create!(user_id: m1.id, title: "Paul - Developpeur web, ancien barman")
c2 = Content.create!(user_id: m2.id, title: "Carla - Actrice & chanteuse")
c3 = Content.create!(user_id: m3.id, title: "Théobald - Entrepreneur, ancien analyste financier")
c4 = Content.create!(user_id: m4.id, title: "Eric - Ministre de la Justice, ancien avocat")
c5 = Content.create!(user_id: m5.id, title: "Jonathan - Acteur de cinema, ancien commercial")
c6 = Content.create!(user_id: m6.id, title: "Kaaris - Rappeur & acteur")

# attaching videos to content
c1.video.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/raw/upload/v1669815582/e0ee1rdiklsvx4mt8pqv.mp4'),
  filename: 'developpeur.mp4',
  content_type: 'video/mp4'
)
c1.save!

c2.video.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/raw/upload/v1669817958/nyyknsxaztmobngiqpqw.mp4'),
  filename: 'acteur.mp4',
  content_type: 'video/mp4'
)
c2.save!

c3.video.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/raw/upload/v1669819798/mksf9uzxy4tbiezzdmln.mp4'),
  filename: 'entrepreneur.mp4',
  content_type: 'video/mp4'
)
c3.save!

c4.video.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/raw/upload/v1669819610/stzfth5l9e7p7idywdpz.webm'),
  filename: 'avocat.mp4',
  content_type: 'video/mp4'
)
c4.save!

c5.video.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/raw/upload/v1669820410/refmklbc0urrgojd5gcb.mp4'),
  filename: 'jonathan.mp4',
  content_type: 'video/mp4'
)
c5.save!

c6.video.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/raw/upload/v1669820645/dnhlvy2wewmvvsopaxzt.mp4'),
  filename: 'jonathan.mp4',
  content_type: 'video/mp4'
)
c6.save!
