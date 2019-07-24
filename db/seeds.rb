require 'faker'

puts "creating users"

katie = User.create(
    first_name: "Katie",
    last_name: "Luck",
    email: "cath@gmail.com",
    password: "password",
    city: "London"
)

cath = User.create(
    first_name: "Cath",
    last_name: "Ruben",
    email: "cath@gmail.com",
    password: "password",
    city: "London"

)

peter = User.create(
    first_name: "Peter",
    last_name: "Leven",
    email: "peter@gmail.com",
    password: "password",
    city: "Madrid"

)

victor = User.create(
    first_name: "Victor",
    last_name: "Rubio",
    email: "victor@gmail.com",
    password: "password",
    city: "Paris"
)

puts "creating OGs"


new_fondita = Organisation.create(
    name: "Together Against Cancer",
    location: "Campeche 234",
    city: "Madrid",
    description: "Join me in the help for cancer",
    user: katie,
)

new_fondi = Organisation.create(
    name: "Cooking Classes!",
    location: "4 Oaks Crescent",
    city: "London",
    description: "Hi I am a world cooker, working in various restaruant and would love you to try my food,and learn to cook with me through my many workshops!",
    user: victor,
)

new_fonda = Organisation.create(
    name: "Excess Yoga",
    location: "Abbot Street",
    city: "London",
    description: "Hi, please join me in Yoga every morning in the heart of london!",
    user: cath,
)


new_fondu = Organisation.create(
    name: "Jumping Jacks",
    location: "445 Mount Eden Road",
    city: "London",
    description: "I own a small fitness studio and offer a variety of classes in my workshops!",
    user: victor,
)


