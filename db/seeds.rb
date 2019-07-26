require 'faker'

puts "First Creating Users"

user = User.create(
   username: Faker::Artist.name,
   full_name: Faker::Cannabis.buzzword,
   website: Faker::Coffee.variety,
   bio: Faker::Coffee.blend_name,
   email:    "gg@gmail.com",
   password: "password",
   is_admin: true,
   location: "Madrid",
   photo: "app/assets/sl1image.jpg"
 )

userone = User.create(
   username: Faker::Artist.name,
   full_name: Faker::Cannabis.buzzword,
   website: Faker::Coffee.variety,
   bio: Faker::Coffee.blend_name,
   email:    "victor@gmail.com",
   password: "password",
   is_admin: true,
   location: "Madrid",
   photo: "app/assets/sl2image.jpg"
 )

usertwo = User.create(
   username: Faker::Artist.name,
   full_name: Faker::Cannabis.buzzword,
   website: Faker::Coffee.variety,
   bio: Faker::Coffee.blend_name,
   email:    "v@gmail.com",
   password: "password",
   is_admin: false,
   location: "London",
    photo: "app/assets/sl3image.jpg"
)

userthree = User.create(
   username: Faker::Artist.name,
   full_name: Faker::Cannabis.buzzword,
   website: Faker::Coffee.variety,
   bio: Faker::Coffee.blend_name,
   email:    "h@gmail.com",
   password: "password",
   is_admin: false,
   location: "London",
   photo: "app/assets/sl4image.jpg"

 )

userfour = User.create(
   username: Faker::Artist.name,
   full_name: Faker::Cannabis.buzzword,
   website: Faker::Coffee.variety,
   bio: Faker::Coffee.blend_name,
   email:    "four@gmail.com",
   password: "password",
   is_admin: false,
   location: "London",
   photo: "app/assets/sl5image.jpg"

 )

usergive = User.create(
   username: Faker::Artist.name,
   full_name: Faker::Cannabis.buzzword,
   website: Faker::Coffee.variety,
   bio: Faker::Coffee.blend_name,
   email:    "papa@gmail.com",
   password: "password",
   is_admin: false,
   location: "Paris",
  photo: "app/assets/sl5image.jpg",

 )

usersix = User.create(
   username: Faker::Artist.name,
   full_name: Faker::Cannabis.buzzword,
   website: Faker::Coffee.variety,
   bio: Faker::Coffee.blend_name,
   email:    "vc@gmail.com",
   password: "password",
   is_admin: false,
   location: "Lisboa",
   photo: "app/assets/sl6image.jpg",
 )

userseven = User.create(
   username: Faker::Artist.name,
   full_name: Faker::Cannabis.buzzword,
   website: Faker::Coffee.variety,
   bio: Faker::Coffee.blend_name,
   email:    "vty@gmail.com",
   password: "password",
   is_admin: false,
   location: "Lisboa",
   photo: "app/assets/sl7image.jpg",

 )

usertwo = User.create(
   username: Faker::Artist.name,
   full_name: Faker::Cannabis.buzzword,
   website: Faker::Coffee.variety,
   bio: Faker::Coffee.blend_name,
   email:    "vklrubio@gmail.com",
   password: "password",
   is_admin: false,
   location: "Lisboa",
 )


puts "Second creating places"

placeone = Place.create(
   name: "Bandita Kitchen" ,
   address: Faker::Address.street_address,
   phone: "400400412",
   country: "Spain" ,
   city: "Madrid" ,
   user: userone,
   category: "Cooking",
   photo: "app/assets/pe3image.jpg",
 )

placetwo = Place.create(
   name: "Jamon Bueno" ,
   address: Faker::Address.street_address,
   phone: "400400412",
   country: "Spain" ,
   city: "Madrid" ,
   user: userone,
   category: "Theraputal",
   photo: "app/assets/pe1image.jpg",
 )

placethree = Place.create(
   name: "Hugo's Bar" ,
   address: Faker::Address.street_address,
   phone: "400700089",
   country: "UK" ,
   city: "London" ,
   user: usertwo,
   category: "Pleasure and Lesuire",
   photo: "app/assets/pe2image.jpg",

 )

placefor = Place.create(
   name: "Harry Disco Bar" ,
   address: Faker::Address.street_address,
   phone: "567400412",
   country: "UK" ,
   city: "London" ,
   user: userthree,
   category: "Drinks",
   photo: "app/assets/pe6image.jpg",
 )


puts "Third cums the listing"

listingone = List.create(
   name: "Japanese Cuisese" ,
   description: "Join me in making the finest Japanese cousine at my kitchen!",
   capacity: 8,
   length: 60,
   price: 5,
   location: "Madrid" ,
   is_public: true,
   place: placeone,
   photo: "app/assets/madrid.jpg",
   start_time: "Thursday, August 17, 2020 16:32:32",
 )




puts "Good to go"
