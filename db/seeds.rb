# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'aws-sdk-s3'
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

puts "Deleting preferences"
Preference.destroy_all

puts "Deleting students"
User.student.destroy_all

puts "Deleting professionals"
User.mentor.destroy_all

puts "Deleting tags"
Tag.destroy_all

puts "Creating students"
s1 = User.create!(first_name: "Gabriel", last_name: "de Monts", age: 17, email: "gabriel@gmail.com", password: "123456", description: "Bachelier en quete de renseignements sur l'industrie du luxe", status: :student)
s2 = User.create!(first_name: "Robin", last_name: "Rettien", age: 17, email: "robin@gmail.com", password: "123456", description: "Bachelier en quete d'une formation qui permettra de faire de l'argent très rapidement", status: :student)
s3 = User.create!(first_name: "Shayneze", last_name: "Megady", age: 16, email: "shayneze@gmail.com", password: "123456", description: "Etudiante à la recherche de renseignements sur le métier d'avocat", status: :student)
s4 = User.create!(first_name: "Mehdi", last_name: "Rachid", age: 18, email: "mehdi@gmail.com", password: "123456", description: "Intéréssé par le développement web", status: :student)
s5 = User.create!(first_name: "Kevin", last_name: "Blakime", age: 17, email: "kevin@gmail.com", password: "123456", description: "Futur chef en quete de skills de cheffing", status: :student)
s6 = User.create!(first_name: "Jean", last_name: "Dupont", age: 18, email: "jeanot@gmail.com", password: "123456", description: "Fan de photo", status: :student)
s7 = User.create!(first_name: "Nicolas", last_name: "Bernard", age: 19, email: "nicolas@gmail.com", password: "123456", description: "J'aimerais tout quitter pour me lancer dans le rap", status: :student)
s8 = User.create!(first_name: "Julie", last_name: "Martin", age: 16, email: "julie@gmail.com", password: "123456", description: "J'aimerais faire une carrière au service de l'Etat", status: :student)
s9 = User.create!(first_name: "Madeleine", last_name: "Robert", age: 17, email: "madeleine@gmail.com", password: "123456", description: "Intéréssée par le marketing et la grande conso", status: :student)
s10 = User.create!(first_name: "Baptiste", last_name: "Durand", age: 18, email: "baptiste@gmail.com", password: "123456", description: "Etudiant intéréssé par le batiment", status: :student)

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

# mentors
puts "Creating mentors"
m1 = User.new(first_name: "Sophie", last_name: "Portier", age: 30, email: "sophie@gmail.com", password: "123456", description: "Meilleur dev en région parisienne, ancienne photographe", status: :mentor)
m2 = User.new(first_name: "Carla", last_name: "Bruni", age: 58, email: "carla@gmail.com", password: "123456", description: "Actrice/chanteuse sans prétention", status: :mentor)
m3 = User.new(first_name: "Théobald", last_name: "de Bentzmann", age: 32, email: "theobald@gmail.com", password: "123456", description: "Born leader - un chef c'est fait pour cheffer", status: :mentor)
m4 = User.new(first_name: "Eric", last_name: "Dupont-Moretti", age: 61, email: "erci@gmail.com", password: "123456", description: "Avocat et garde des Sceaux", status: :mentor)
m5 = User.new(first_name: "Jonathan", last_name: "Cohen", age: 42, email: "jonathan@gmail.com", password: "123456", description: "Acteur, producteur & homme le plus drole de France", status: :mentor)
m6 = User.new(first_name: "Kaaris", last_name: "Okou Gnakouri", age: 42, email: "kaaris@gmail.com", password: "123456", description: "Géni artistique: auteur, rappeur, composteur & acteur", status: :mentor)
m7 = User.new(first_name: "Oceane", last_name: "Gunasena", age: 29, email: "oceane@gmail.com", password: "123456", description: "Chef de projet digital chez Colorz", status: :mentor)
m8 = User.new(first_name: "Helene", last_name: "Michel", age: 26, email: "helene@gmail.com", password: "123456", description: "Data analyst chez Cenisis", status: :mentor)
m9 = User.new(first_name: "Jean", last_name: "Jahier", age: 27, email: "jeanj@gmail.com", password: "123456", description: "Business developper chez Mirakl", status: :mentor)
m10 = User.new(first_name: "Pascal", last_name: "Traore", age: 32, email: "pascal@gmail.com", password: "123456", description: "Chef de chantier chez Sferis, ancien policier", status: :mentor)
m11 = User.new(first_name: "Christophe", last_name: "Tranier", age: 39, email: "christophe@gmail.com", password: "123456", description: "Senior product manager, ancien consultant chez PwC", status: :mentor)
m12 = User.new(first_name: "Mihaela", last_name: "Riza", age: 31, email: "mihaela@gmail.com", password: "123456", description: "Senior account executive, ancienne account executive", status: :mentor)
m13 = User.new(first_name: "Camille", last_name: "Miko", age: 31, email: "camille@gmail.com", password: "123456", description: "Actuaire chez Crédit Agricole Assurances", status: :mentor)
m14 = User.new(first_name: "Fatima", last_name: "Diallo", age: 27, email: "fatima@gmail.com", password: "123456", description: "Data analyst chez Kapten, ancienne consultante data chez KPMG", status: :mentor)

# attaching pictures to students
m1.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669982051/ueowxt5l5hdgyllf6r75.webp'),
  filename: 'sophie.jpg',
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

m7.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669975053/xpjv7ckkpwasaxiy3du2.webp'),
  filename: 'oceane.jpg',
  content_type: 'image/webp'
)
m7.save!

m8.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669976407/a20bggkthep6l8w3nky1.webp'),
  filename: 'helene.jpg',
  content_type: 'image/webp'
)
m8.save!

m9.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669977102/lghrbgs1wxbwduptncqt.webp'),
  filename: 'jeanj.jpg',
  content_type: 'image/webp'
)
m9.save!

m10.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669977907/pezukn5tcekodbma0qvq.webp'),
  filename: 'pascal.jpg',
  content_type: 'image/webp'
)
m10.save!

m11.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669979805/pmytwbjmuhk3gfct4xqb.webp'),
  filename: 'christophe.jpg',
  content_type: 'image/webp'
)
m11.save!

m12.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1669979233/serqv8puyodpivlgcj4b.webp'),
  filename: 'riza.jpg',
  content_type: 'image/webp'
)
m12.save!

m13.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1670239959/eo9an7o3lb1fdb5itt82.jpg'),
  filename: 'camille.jpg',
  content_type: 'image/jpg'
)
m13.save!

m14.photo.attach(
  io: URI.open('https://res.cloudinary.com/dzkld2xzj/image/upload/v1670241276/pbc1zig4xf0aqcemju5g.webp'),
  filename: 'fatima.jpg',
  content_type: 'image/webp'
)
m14.save!

puts "Creating experiences"
# creating experiences for Paul Portier
exp1 = Experience.create!(user_id: m1.id, position: "Lead software engineer", company: "Exotec", sector: "R&D", industry: "tech", start_date: "2018-01-01")
exp2 = Experience.create!(user_id: m1.id, position: "Photographe", company: "Sophie & Co.", sector: "photo", industry: "artisanat", start_date: "2014-01-01")
# creating experiences for Carla Bruni
exp3 = Experience.create!(user_id: m2.id, position: "Acteur", company: "Mediapro", sector: "cinema", industry: "artisanat", start_date: "1995-01-01")
exp4 = Experience.create!(user_id: m2.id, position: "Chanteur", company: "Universal Music", sector: "musique", industry: "artisanat", start_date: "2000-01-01")
# creating experiences for Théobald de Bentzmann
exp5 = Experience.create!(user_id: m3.id, position: "PDG", company: "Alchimii", sector: "entrepreneur", industry: "evenementiel", start_date: "2017-01-01")
exp6 = Experience.create!(user_id: m3.id, position: "Analyste financier", company: "Barclays", sector: "finance", industry: "services financiers", start_date: "2013-01-01")
# creating experiences for Eric Dupont-Moretti
exp7 = Experience.create!(user_id: m4.id, position: "Ministre de la Justice", company: "Gouvernement", sector: "publique", industry: "administration publique", start_date: "2020-01-01")
exp8 = Experience.create!(user_id: m4.id, position: "Avocat", company: "Dupont-Moretti Avocat", sector: "juridique", industry: "profession libérale", start_date: "1984-01-01")
# creating experiences for Jonathan Cohen
exp9 = Experience.create!(user_id: m5.id, position: "Acteur", company: "Canal+", sector: "cinema", industry: "artisanat", start_date: "1995-01-01")
exp10 = Experience.create!(user_id: m5.id, position: "Commercial", company: "La Foret", sector: "immobilier", industry: "activité immobilière", start_date: "2000-01-01")
# creating experiences for Kaaris
exp11 = Experience.create!(user_id: m6.id, position: "Acteur", company: "Labyrinthe films", sector: "cinema", industry: "artisanat", start_date: "2016-01-01")
exp12 = Experience.create!(user_id: m6.id, position: "Chanteur", company: "Universal Music", sector: "musique", industry: "artisanat", start_date: "2013-01-01")
# creating experiences for Oceane
exp13 = Experience.create!(user_id: m7.id, position: "Chef de projet digital", company: "Colorz", sector: "communication", industry: "digital", start_date: "2018-01-01")
exp14 = Experience.create!(user_id: m7.id, position: "Junior marketing manager", company: "Procter & Gamble", sector: "marketing", industry: "grande consommation", start_date: "2016-01-01")
# creating experiences for Helene
exp15 = Experience.create!(user_id: m8.id, position: "Senior data analyst", company: "Cenisis", sector: "data", industry: "data", start_date: "2020-01-01")
exp16 = Experience.create!(user_id: m8.id, position: "Business analyst", company: "ManoMano", sector: "operations", industry: "ecommerce", start_date: "2019-01-01")
# creating experiences for Jean
exp17 = Experience.create!(user_id: m9.id, position: "Business developper", company: "Mirakl", sector: "vente", industry: "tech", start_date: "2020-01-01")
exp18 = Experience.create!(user_id: m9.id, position: "Libraire", company: "Libraire centrale", sector: "livre", industry: "culture", start_date: "2018-01-01")
# creating experiences for Pascal
exp19 = Experience.create!(user_id: m10.id, position: "Chef de chantier", company: "Sferis", sector: "batiment", industry: "construction", start_date: "2017-01-01")
exp20 = Experience.create!(user_id: m10.id, position: "Policier", company: "Mairie de Lille", sector: "publique", industry: "protection civile", start_date: "2015-01-01")
# creating experiences for Jerome
exp21 = Experience.create!(user_id: m11.id, position: "Senior product manager", company: "Gens de confiance", sector: "operations", industry: "tech", start_date: "2017-01-01")
exp22 = Experience.create!(user_id: m11.id, position: "Consultant en stratégie", company: "PwC", sector: "conseil", industry: "services", start_date: "2013-01-01")
# creating experiences for Riza
exp23 = Experience.create!(user_id: m12.id, position: "Senior account executive", company: "Odaseva", sector: "commerce", industry: "data", start_date: "2019-01-01")
exp24 = Experience.create!(user_id: m12.id, position: "Account executive", company: "Odaseva", sector: "commerce", industry: "data", start_date: "2016-01-01")
# creating experiences for Camille
exp25 = Experience.create!(user_id: m13.id, position: "Actuaire", company: "Crédit Agricole Assurances", sector: "assurance", industry: "banque", start_date: "2019-01-01")
exp26 = Experience.create!(user_id: m13.id, position: "Actuaire", company: "Axa Assurances", sector: "assurance", industry: "banque", start_date: "2016-01-01")
# creating experiences for Fatima
exp27 = Experience.create!(user_id: m14.id, position: "Data Analyst", company: "Kapten", sector: "data", industry: "tech", start_date: "2020-01-01")
exp28 = Experience.create!(user_id: m14.id, position: "Consultante Data", company: "KPMG", sector: "data", industry: "conseil", start_date: "2018-01-01")

puts "Creating institutions"
i1 = Institution.new(name: "Le Wagon", description: "Accélérez votre carrière, formez-vous aux métiers de la tech")
i2 = Institution.new(name: "Conservatoire national supérieur d'art dramatique", description: "Le Conservatoire National Supérieur d’Art Dramatique – PSL (CNSAD-PSL) est un établissement d’enseignement supérieur placé sous la tutelle du ministère chargé de la culture")
i3 = Institution.new(name: "ESCP Business School", description: "Let's empower and lead the world in the right direction")
i4 = Institution.new(name: "Université Lille 2", description: "Inspirons demain")
i5 = Institution.new(name: "Université Paris-Panthéon-Assas", description: "Pour l'éducation, pour la nation")
i6 = Institution.new(name: "Les compagnons du devoir", description: "Association ouvrière des compagnons du devoir et du tour de France")

# attaching videos to institutions
url1 = Aws::S3::Object.new(
  bucket_name: ENV['AWS_BUCKET'],
  key: 'lewagonn.mp4',
  client: Aws::S3::Client.new(
    access_key_id: ENV['ACCESS_KEY_ID'],
    secret_access_key: ENV['SECRET_ACCESS_KEY']
  )
).presigned_url(:get, expires_in: 3600)

i1.video.attach(
  io: URI.open(url1),
  filename: 'lewagon.mp4',
  content_type: 'video/mp4'
)

url2 = Aws::S3::Object.new(
  bucket_name: ENV['AWS_BUCKET'],
  key: 'cnad.mp4',
  client: Aws::S3::Client.new(
    access_key_id: ENV['ACCESS_KEY_ID'],
    secret_access_key: ENV['SECRET_ACCESS_KEY']
  )
).presigned_url(:get, expires_in: 3600)

i2.video.attach(
  io: URI.open(url2),
  filename: 'cnad.mp4',
  content_type: 'video/mp4'
)

url3 = Aws::S3::Object.new(
  bucket_name: ENV['AWS_BUCKET'],
  key: 'escp.mp4',
  client: Aws::S3::Client.new(
    access_key_id: ENV['ACCESS_KEY_ID'],
    secret_access_key: ENV['SECRET_ACCESS_KEY']
  )
).presigned_url(:get, expires_in: 3600)

i3.video.attach(
  io: URI.open(url3),
  filename: 'escp.mp4',
  content_type: 'video/mp4'
)

url4 = Aws::S3::Object.new(
  bucket_name: ENV['AWS_BUCKET'],
  key: 'lille.mp4',
  client: Aws::S3::Client.new(
    access_key_id: ENV['ACCESS_KEY_ID'],
    secret_access_key: ENV['SECRET_ACCESS_KEY']
  )
).presigned_url(:get, expires_in: 3600)

i4.video.attach(
  io: URI.open(url4),
  filename: 'lille.mp4',
  content_type: 'video/mp4'
)

url5 = Aws::S3::Object.new(
  bucket_name: ENV['AWS_BUCKET'],
  key: 'assas.mp4',
  client: Aws::S3::Client.new(
    access_key_id: ENV['ACCESS_KEY_ID'],
    secret_access_key: ENV['SECRET_ACCESS_KEY']
  )
).presigned_url(:get, expires_in: 3600)

i5.video.attach(
  io: URI.open(url5),
  filename: 'lille.mp4',
  content_type: 'video/mp4'
)

url6 = Aws::S3::Object.new(
  bucket_name: ENV['AWS_BUCKET'],
  key: 'compagnons.mp4',
  client: Aws::S3::Client.new(
    access_key_id: ENV['ACCESS_KEY_ID'],
    secret_access_key: ENV['SECRET_ACCESS_KEY']
  )
).presigned_url(:get, expires_in: 3600)

i6.video.attach(
  io: URI.open(url6),
  filename: 'compagnons.mp4',
  content_type: 'video/mp4'
)

# attaching images to institutions
filei1 = URI.open("https://etudestech.com/wp-content/uploads/2021/07/lewagon-logo-square-b6124eb974be375884558e4464efce48a9b5664f18422768156364363ecdd1fc.png")
i1.photo.attach(io: filei1, filename: "i1.png", content_type: "image/png")
i1.save!

filei2 = URI.open("https://cnsad.psl.eu/wp-content/uploads/2019/12/logo_CNSAD_PSL.svg")
i2.photo.attach(io: filei2, filename: "i2.png", content_type: "image/png")
i2.save!

filei3 = URI.open("https://upload.wikimedia.org/wikipedia/commons/f/fb/ESCP_Business_School_2020_Logo.jpg")
i3.photo.attach(io: filei3, filename: "i3.png", content_type: "image/png")
i3.save!

filei4 = URI.open("https://image.jimcdn.com/app/cms/image/transf/none/path/s591e1c24fa53fcbb/image/i8cbfef27ff5feadc/version/1478359958/image.png")
i4.photo.attach(io: filei4, filename: "i3.png", content_type: "image/png")
i4.save!

filei5 = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/4/45/Logo_Panth%C3%A9on-Assas.svg/1200px-Logo_Panth%C3%A9on-Assas.svg.png")
i5.photo.attach(io: filei5, filename: "i5.png", content_type: "image/png")
i5.save!

filei6 = URI.open("https://www.compagnons-du-devoir.com/sites/all/themes/compagnons/assets/images/logo-compagnons.png")
i6.photo.attach(io: filei6, filename: "i6.png", content_type: "image/png")
i6.save!

puts "Creating educations"
ed1 = Education.create!(user_id: m1.id, institution_id: i1.id, start_date: "2016-10-20", degree_level: "Bootcamp", field: "Développement Web")
ed2 = Education.create!(user_id: m2.id, institution_id: i2.id, start_date: "1990-09-01", degree_level: "License", field: "Theatre & cinema")
ed3 = Education.create!(user_id: m3.id, institution_id: i3.id, start_date: "2000-09-01", degree_level: "Master", field: "Finance")
ed4 = Education.create!(user_id: m4.id, institution_id: i4.id, start_date: "1981-09-01", degree_level: "Master", field: "Droit")
ed5 = Education.create!(user_id: m5.id, institution_id: i2.id, start_date: "1979-09-01", degree_level: "Master", field: "Theatre")
ed6 = Education.create!(user_id: m6.id, institution_id: i5.id, start_date: "1999-09-01", degree_level: "License", field: "Histoire")
ed7 = Education.create!(user_id: m7.id, institution_id: i3.id, start_date: "2010-09-01", degree_level: "Master", field: "Gestion")
ed8 = Education.create!(user_id: m8.id, institution_id: i3.id, start_date: "2016-09-01", degree_level: "Master", field: "Gestion")
ed9 = Education.create!(user_id: m9.id, institution_id: i5.id, start_date: "2016-09-01", degree_level: "Master", field: "Litterature")
ed10 = Education.create!(user_id: m10.id, institution_id: i4.id, start_date: "2014-09-01", degree_level: "License", field: "Gestion")
ed11 = Education.create!(user_id: m11.id, institution_id: i1.id, start_date: "2014-09-01", degree_level: "Bootcamp", field: "Developpement Web")
ed12 = Education.create!(user_id: m12.id, institution_id: i3.id, start_date: "2012-09-01", degree_level: "Master", field: "Gestion")
ed13 = Education.create!(user_id: m13.id, institution_id: i3.id, start_date: "2014-09-01", degree_level: "Master", field: "Finance")
ed14 = Education.create!(user_id: m14.id, institution_id: i3.id, start_date: "2014-09-01", degree_level: "Master", field: "Data")

puts "Creating contents"
c1 = Content.new(user_id: m1.id, title: "Sophie - Lead software engineer")
c2 = Content.new(user_id: m2.id, title: "Carla - Actrice & chanteuse")
c3 = Content.new(user_id: m3.id, title: "Théobald - Entrepreneur, ancien analyste financier")
c4 = Content.new(user_id: m4.id, title: "Eric - Ministre de la Justice, ancien avocat")
c5 = Content.new(user_id: m5.id, title: "Jonathan - Acteur de cinema, ancien commercial")
c6 = Content.new(user_id: m6.id, title: "Kaaris - Rappeur & acteur")
c7 = Content.new(user_id: m7.id, title: "Oceane - Chef de projet digital chez Colorz")
c8 = Content.new(user_id: m8.id, title: "Helene - Data analyst senior chez Cenisis")
c9 = Content.new(user_id: m9.id, title: "Jean - Business developper chez Mirakl")
c10 = Content.new(user_id: m10.id, title: "Pascal - Chef de chantier chez Sferis")
c11 = Content.new(user_id: m11.id, title: "Christophe - Senior product manager ches Gens de Confiance")
c12 = Content.new(user_id: m12.id, title: "Mihaela - Senior account executive chez Odaseva")
c13 = Content.new(user_id: m13.id, title: "Camille - Actuaire chez Crédit Agricole Assurances")
c14 = Content.new(user_id: m14.id, title: "Fatima - Data analyste chez Kapten")

# attaching videos to content
url_c1 = Aws::S3::Object.new(
  bucket_name: ENV['AWS_BUCKET'],
  key: 'sophie-lead.mp4',
  client: Aws::S3::Client.new(
    access_key_id: ENV['ACCESS_KEY_ID'],
    secret_access_key: ENV['SECRET_ACCESS_KEY']
  )
).presigned_url(:get, expires_in: 3600)

c1.video.attach(
  io: URI.open(url_c1),
  filename: 'sophie-lead.mp4',
  content_type: 'video/mp4'
)
c1.save!

url_c2 = Aws::S3::Object.new(
  bucket_name: ENV['AWS_BUCKET'],
  key: 'carlitaaa.mp4',
  client: Aws::S3::Client.new(
    access_key_id: ENV['ACCESS_KEY_ID'],
    secret_access_key: ENV['SECRET_ACCESS_KEY']
  )
).presigned_url(:get, expires_in: 3600)

c2.video.attach(
  io: URI.open(url_c2),
  filename: 'carla.mp4',
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

url_c7 = Aws::S3::Object.new(
  bucket_name: ENV['AWS_BUCKET'],
  key: 'oceane-chef.mp4',
  client: Aws::S3::Client.new(
    access_key_id: ENV['ACCESS_KEY_ID'],
    secret_access_key: ENV['SECRET_ACCESS_KEY']
  )
).presigned_url(:get, expires_in: 3600)

c7.video.attach(
  io: URI.open(url_c7),
  filename: 'oceane-chef.mp4',
  content_type: 'video/mp4'
)
c7.save!

url_c8 = Aws::S3::Object.new(
  bucket_name: ENV['AWS_BUCKET'],
  key: 'helene-data.mp4',
  client: Aws::S3::Client.new(
    access_key_id: ENV['ACCESS_KEY_ID'],
    secret_access_key: ENV['SECRET_ACCESS_KEY']
  )
).presigned_url(:get, expires_in: 3600)

c8.video.attach(
  io: URI.open(url_c8),
  filename: 'helene-data.mp4',
  content_type: 'video/mp4'
)
c8.save!

url_c9 = Aws::S3::Object.new(
  bucket_name: ENV['AWS_BUCKET'],
  key: 'jean-business.mp4',
  client: Aws::S3::Client.new(
    access_key_id: ENV['ACCESS_KEY_ID'],
    secret_access_key: ENV['SECRET_ACCESS_KEY']
  )
).presigned_url(:get, expires_in: 3600)

c9.video.attach(
  io: URI.open(url_c9),
  filename: 'jean-business.mp4',
  content_type: 'video/mp4'
)
c9.save!

url_c10 = Aws::S3::Object.new(
  bucket_name: ENV['AWS_BUCKET'],
  key: 'pascal-chef.mp4',
  client: Aws::S3::Client.new(
    access_key_id: ENV['ACCESS_KEY_ID'],
    secret_access_key: ENV['SECRET_ACCESS_KEY']
  )
).presigned_url(:get, expires_in: 3600)

c10.video.attach(
  io: URI.open(url_c10),
  filename: 'pascal-chef.mp4',
  content_type: 'video/mp4'
)
c10.save!

url_c11 = Aws::S3::Object.new(
  bucket_name: ENV['AWS_BUCKET'],
  key: 'christophe-senior.mp4',
  client: Aws::S3::Client.new(
    access_key_id: ENV['ACCESS_KEY_ID'],
    secret_access_key: ENV['SECRET_ACCESS_KEY']
  )
).presigned_url(:get, expires_in: 3600)

c11.video.attach(
  io: URI.open(url_c11),
  filename: 'christophe-seniorpm.mp4',
  content_type: 'video/mp4'
)
c11.save!

url_c12 = Aws::S3::Object.new(
  bucket_name: ENV['AWS_BUCKET'],
  key: 'mihaela-senior.mp4',
  client: Aws::S3::Client.new(
    access_key_id: ENV['ACCESS_KEY_ID'],
    secret_access_key: ENV['SECRET_ACCESS_KEY']
  )
).presigned_url(:get, expires_in: 3600)

c12.video.attach(
  io: URI.open(url_c12),
  filename: 'mihaela-senior.mp4',
  content_type: 'video/mp4'
)
c12.save!

url_c13 = Aws::S3::Object.new(
  bucket_name: ENV['AWS_BUCKET'],
  key: "camille-actuaire.mp4",
  client: Aws::S3::Client.new(
    access_key_id: ENV['ACCESS_KEY_ID'],
    secret_access_key: ENV['SECRET_ACCESS_KEY']
  )
).presigned_url(:get, expires_in: 3600)

c13.video.attach(
  io: URI.open(url_c13),
  filename: "camille-actuaire.mp4",
  content_type: 'video/mp4'
)
c13.save!

url_c14 = Aws::S3::Object.new(
  bucket_name: ENV['AWS_BUCKET'],
  key: "fatima-data.mp4",
  client: Aws::S3::Client.new(
    access_key_id: ENV['ACCESS_KEY_ID'],
    secret_access_key: ENV['SECRET_ACCESS_KEY']
  )
).presigned_url(:get, expires_in: 3600)

c14.video.attach(
  io: URI.open(url_c14),
  filename: "fatima-data.mp4",
  content_type: 'video/mp4'
)
c14.save!

tags_name = ["#Aéronautique", "#Agro", "#Artisanat", "#Audiovisuel", "#Finance", "#Automobile", "#Banque", "#Assurance", "#BTP", "#Biologie-chimie", "#Commerce", "#Communication", "#Art", "#Culture", "#Défense", "#Droit", "#Edition", "#Enseignement", "#Environnement", "#Administration", "#Hôtellerie-Restauration", "#Humanitaire", "#Immobilier", "#Industrie", "#Informatique", "#Journalisme", "#Luxe", "#Marketing", "#Médical", "#Mode-Textile", "#Paramédical", "#Social", "#Sport", "#Tourisme", "#Transport-Logistique", "#Technologie", "#Médecine", "#Autre", "#R&D", "#RH", "#Production", "#Marketing", "#Achats", "#Comptabilité", "#Direction", "#Gestion", "#Logistique", "#Vente", "#Opérations", "#Manutention", "#Création", "#Entretien", "#Ingénierie", "#Entrepreneur"]

puts "Creating tags"

tags_name.each do |tag_name|
  Tag.create!(name: tag_name.downcase)
end

# t1 = Tag.create!(name: "transport")
# t2 = Tag.create!(name: "restauration")
# t3 = Tag.create!(name: "publique")
# t4 = Tag.create!(name: "artisanat")
# t5 = Tag.create!(name: "musique")
# t6 = Tag.create!(name: "cinema")
# t7 = Tag.create!(name: "santé")
# t8 = Tag.create!(name: "pharma")
# t9 = Tag.create!(name: "juridique")
# t10 = Tag.create!(name: "immobilier")
# t11 = Tag.create!(name: "services")
# t12 = Tag.create!(name: "finance")
# t13 = Tag.create!(name: "gestion")
# t14 = Tag.create!(name: "entrepreneur")
# t15 = Tag.create!(name: "vente")
# t16 = Tag.create!(name: "commerce")
# t17 = Tag.create!(name: "hotellerie")
# t18 = Tag.create!(name: "construction")
# t19 = Tag.create!(name: "batiment")
# t20 = Tag.create!(name: "grande consommation")
# t21 = Tag.create!(name: "marketing")
# t22 = Tag.create!(name: "luxe")
# t23 = Tag.create!(name: "evenementiel")
# t24 = Tag.create!(name: "web")
# t25 = Tag.create!(name: "photo")

puts "Creating preferences"
p1 = Preference.create!(user_id: s1.id, tag_id: t22.id)
p2 = Preference.create!(user_id: s1.id, tag_id: t17.id)
p3 = Preference.create!(user_id: s1.id, tag_id: t23.id)
p4 = Preference.create!(user_id: s2.id, tag_id: t16.id)
p5 = Preference.create!(user_id: s2.id, tag_id: t12.id)
p6 = Preference.create!(user_id: s3.id, tag_id: t9.id)
p7 = Preference.create!(user_id: s3.id, tag_id: t3.id)
p8 = Preference.create!(user_id: s4.id, tag_id: t24.id)
p9 = Preference.create!(user_id: s4.id, tag_id: t14.id)
p10 = Preference.create!(user_id: s5.id, tag_id: t23.id)
p11 = Preference.create!(user_id: s5.id, tag_id: t14.id)
p12 = Preference.create!(user_id: s5.id, tag_id: t12.id)
p13 = Preference.create!(user_id: s6.id, tag_id: t4.id)
p14 = Preference.create!(user_id: s7.id, tag_id: t5.id)
p15 = Preference.create!(user_id: s7.id, tag_id: t4.id)
p16 = Preference.create!(user_id: s8.id, tag_id: t3.id)
p17 = Preference.create!(user_id: s9.id, tag_id: t21.id)
p18 = Preference.create!(user_id: s9.id, tag_id: t20.id)
p19 = Preference.create!(user_id: s10.id, tag_id: t18.id)
p21 = Preference.create!(user_id: m1.id, tag_id: t24.id)
p22 = Preference.create!(user_id: m1.id, tag_id: t25.id)
p23 = Preference.create!(user_id: m3.id, tag_id: t14.id)
p24 = Preference.create!(user_id: m3.id, tag_id: t12.id)
p25 = Preference.create!(user_id: m3.id, tag_id: t23.id)
p26 = Preference.create!(user_id: m2.id, tag_id: t6.id)
p27 = Preference.create!(user_id: m2.id, tag_id: t5.id)
p28 = Preference.create!(user_id: m2.id, tag_id: t4.id)
p29 = Preference.create!(user_id: m4.id, tag_id: t3.id)
p30 = Preference.create!(user_id: m4.id, tag_id: t9.id)
p31 = Preference.create!(user_id: m5.id, tag_id: t16.id)
p32 = Preference.create!(user_id: m5.id, tag_id: t6.id)
p33 = Preference.create!(user_id: m6.id, tag_id: t5.id)
p34 = Preference.create!(user_id: m6.id, tag_id: t6.id)
