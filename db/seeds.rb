# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all
Item.destroy_all
Article.destroy_all
Job.destroy_all

require "faker"

boat = Category.create(name:"Boat", description:"this is a boat")
rv = Category.create(name:"RV", description:"this is a rv")
airplane = Category.create(name:"Airplane", description:"this is a airplane")
motorcycle = Category.create(name:"Motorcycle", description:"this is a motorcycle")
car = Category.create(name:"Car", description:"this is a car")
jetski = Category.create(name:"Jetski", description:"this is a jetski")
snowmobile = Category.create(name:"Snowmobile", description:"this is a snowmobile")
atv = Category.create(name:"ATV", description:"this is a atv")
paraglider = Category.create(name:"Paraglider", description:"this is a paraglider")
submarine = Category.create(name:"Submarine", description:"this is a submarine")

blueboat = boat.items.create(name:"blue boat", description:"this is a blue boat", price: 7, contact:(Faker::PhoneNumber.phone_number ))
greenboat = boat.items.create(name:"green boat", description:"this is a green boat", price: 7, contact:(Faker::PhoneNumber.phone_number ))
purpleboat = boat.items.create(name:"purple boat", description:"this is a purple boat", price: 7, contact:(Faker::PhoneNumber.phone_number ))
redboat = boat.items.create(name:"red boat", description:"this is a red boat", price: 7, contact:(Faker::PhoneNumber.phone_number ))
orangeboat = boat.items.create(name:"orange boat", description:"this is a orange boat", price: 7, contact:(Faker::PhoneNumber.phone_number ))
yellowboat = boat.items.create(name:"yellow boat", description:"this is a yellow boat", price: 7, contact:(Faker::PhoneNumber.phone_number ))
brownboat = boat.items.create(name:"brown boat", description:"this is a brown boat", price: 7, contact:(Faker::PhoneNumber.phone_number ))
blackboat = boat.items.create(name:"black boat", description:"this is a black boat", price: 7, contact:(Faker::PhoneNumber.phone_number ))
whiteboat = boat.items.create(name:"white boat", description:"this is a white boat", price: 7, contact:(Faker::PhoneNumber.phone_number ))
goldboat = boat.items.create(name:"gold boat", description:"this is a gold boat", price: 7, contact:(Faker::PhoneNumber.phone_number ))

bluerv = rv.items.create(name:"blue rv", description:"this is a blue rv", price: 7, contact:(Faker::PhoneNumber.phone_number ))
greenrv = rv.items.create(name:"green rv", description:"this is a green rv", price: 7, contact:(Faker::PhoneNumber.phone_number ))
purplerv = rv.items.create(name:"purple rv", description:"this is a purple rv", price: 7, contact:(Faker::PhoneNumber.phone_number ))
redrv = rv.items.create(name:"red rv", description:"this is a red rv", price: 7, contact:(Faker::PhoneNumber.phone_number ))
orangerv = rv.items.create(name:"orange rv", description:"this is a orange rv", price: 7, contact:(Faker::PhoneNumber.phone_number ))
yellowrv = rv.items.create(name:"yellow rv", description:"this is a yellow rv", price: 7, contact:(Faker::PhoneNumber.phone_number ))
brownrv = rv.items.create(name:"brown rv", description:"this is a brown rv", price: 7, contact:(Faker::PhoneNumber.phone_number ))
blackrv = rv.items.create(name:"black rv", description:"this is a black rv", price: 7, contact:(Faker::PhoneNumber.phone_number ))
whiterv = rv.items.create(name:"white rv", description:"this is a white rv", price: 7, contact:(Faker::PhoneNumber.phone_number ))
goldrv = rv.items.create(name:"gold rv", description:"this is a gold rv", price: 7, contact:(Faker::PhoneNumber.phone_number ))

blueairplane = airplane.items.create(name:"blue airplane", description:"this is a blue airplane", price: 7, contact:(Faker::PhoneNumber.phone_number ))
greenairplane = airplane.items.create(name:"green airplane", description:"this is a green airplane", price: 7, contact:(Faker::PhoneNumber.phone_number ))
purpleairplane = airplane.items.create(name:"purple airplane", description:"this is a purple airplane", price: 7, contact:(Faker::PhoneNumber.phone_number ))
redairplane = airplane.items.create(name:"red airplane", description:"this is a red airplane", price: 7, contact:(Faker::PhoneNumber.phone_number ))
orangeairplane = airplane.items.create(name:"orange airplane", description:"this is a orange airplane", price: 7, contact:(Faker::PhoneNumber.phone_number ))
yellowairplane = airplane.items.create(name:"yellow airplane", description:"this is a yellow airplane", price: 7, contact:(Faker::PhoneNumber.phone_number ))
brownairplane = airplane.items.create(name:"brown airplane", description:"this is a brown airplane", price: 7, contact:(Faker::PhoneNumber.phone_number ))
blackairplane = airplane.items.create(name:"black airplane", description:"this is a blue airplane", price: 7, contact:(Faker::PhoneNumber.phone_number ))
whiteairplane = airplane.items.create(name:"white airplane", description:"this is a blue airplane", price: 7, contact:(Faker::PhoneNumber.phone_number ))
goldairplane = airplane.items.create(name:"gold airplane", description:"this is a blue airplane", price: 7, contact:(Faker::PhoneNumber.phone_number ))

bluemotorcycle = motorcycle.items.create(name:"blue motorcycle", description:"this is a blue motorcycle", price: 7, contact:(Faker::PhoneNumber.phone_number ))
greenmotorcycle = motorcycle.items.create(name:"green motorcycle", description:"this is a blue motorcycle", price: 7, contact:(Faker::PhoneNumber.phone_number ))
purplemotorcycle = motorcycle.items.create(name:"purple motorcycle", description:"this is a blue motorcycle", price: 7, contact:(Faker::PhoneNumber.phone_number ))
redmotorcycle = motorcycle.items.create(name:"red motorcycle", description:"this is a blue motorcycle", price: 7, contact:(Faker::PhoneNumber.phone_number ))
orangemotorcycle = motorcycle.items.create(name:"orange motorcycle", description:"this is a blue motorcycle", price: 7, contact:(Faker::PhoneNumber.phone_number ))
yellowmotorcycle = motorcycle.items.create(name:"yellow motorcycle", description:"this is a blue motorcycle", price: 7, contact:(Faker::PhoneNumber.phone_number ))
brownmotorcycle = motorcycle.items.create(name:"brown motorcycle", description:"this is a blue motorcycle", price: 7, contact:(Faker::PhoneNumber.phone_number ))
blackmotorcycle = motorcycle.items.create(name:"black motorcycle", description:"this is a blue motorcycle", price: 7, contact:(Faker::PhoneNumber.phone_number ))
whitemotorcycle = motorcycle.items.create(name:"white motorcycle", description:"this is a blue motorcycle", price: 7, contact:(Faker::PhoneNumber.phone_number ))
goldmotorcycle = motorcycle.items.create(name:"gold motorcycle", description:"this is a blue motorcycle", price: 7, contact:(Faker::PhoneNumber.phone_number ))

bluecar = car.items.create(name:"blue car", description:"this is a blue car", price: 7, contact:(Faker::PhoneNumber.phone_number ))
greencar = car.items.create(name:"green car", description:"this is a blue car", price: 7, contact:(Faker::PhoneNumber.phone_number ))
purplecar = car.items.create(name:"purple car", description:"this is a blue car", price: 7, contact:(Faker::PhoneNumber.phone_number ))
redcar = car.items.create(name:"red car", description:"this is a blue car", price: 7, contact:(Faker::PhoneNumber.phone_number ))
orangecar = car.items.create(name:"orange car", description:"this is a blue car", price: 7, contact:(Faker::PhoneNumber.phone_number ))
yellowcar = car.items.create(name:"yellow car", description:"this is a blue car", price: 7, contact:(Faker::PhoneNumber.phone_number ))
browncar = car.items.create(name:"brown car", description:"this is a blue car", price: 7, contact:(Faker::PhoneNumber.phone_number ))
blackmcar = car.items.create(name:"black car", description:"this is a blue car", price: 7, contact:(Faker::PhoneNumber.phone_number ))
whitecar = car.items.create(name:"white car", description:"this is a blue car", price: 7, contact:(Faker::PhoneNumber.phone_number ))
goldcar = car.items.create(name:"gold car", description:"this is a blue car", price: 7, contact:(Faker::PhoneNumber.phone_number ))

bluejetski = jetski.items.create(name:"blue jetski", description:"this is a blue jetski", price: 7, contact:(Faker::PhoneNumber.phone_number ))
greenjetski = jetski.items.create(name:"green jetski", description:"this is a blue jetski", price: 7, contact:(Faker::PhoneNumber.phone_number ))
purplejetski = jetski.items.create(name:"purple jetski", description:"this is a blue jetski", price: 7, contact:(Faker::PhoneNumber.phone_number ))
redjetski = jetski.items.create(name:"red jetski", description:"this is a blue jetski", price: 7, contact:(Faker::PhoneNumber.phone_number ))
orangejetski = jetski.items.create(name:"orange jetski", description:"this is a blue jetski", price: 7, contact:(Faker::PhoneNumber.phone_number ))
yellowjetski = jetski.items.create(name:"yellow jetski", description:"this is a blue jetski", price: 7, contact:(Faker::PhoneNumber.phone_number ))
brownjetski = jetski.items.create(name:"brown jetski", description:"this is a blue jetski", price: 7, contact:(Faker::PhoneNumber.phone_number ))
blackjetski = jetski.items.create(name:"black jetski", description:"this is a blue jetski", price: 7, contact:(Faker::PhoneNumber.phone_number ))
whitejetski = jetski.items.create(name:"white jetski", description:"this is a blue jetski", price: 7, contact:(Faker::PhoneNumber.phone_number ))
goldjetski = jetski.items.create(name:"gold jetski", description:"this is a blue jetski", price: 7, contact:(Faker::PhoneNumber.phone_number ))

bluesnowmobile = snowmobile.items.create(name:"blue snowmobile", description:"this is a blue snowmobile", price: 7, contact:(Faker::PhoneNumber.phone_number ))
greensnowmobile = snowmobile.items.create(name:"green snowmobile", description:"this is a blue snowmobile", price: 7, contact:(Faker::PhoneNumber.phone_number ))
purplesnowmobile = snowmobile.items.create(name:"purple snowmobile", description:"this is a blue snowmobile", price: 7, contact:(Faker::PhoneNumber.phone_number ))
redsnowmobile = snowmobile.items.create(name:"red snowmobile", description:"this is a blue snowmobile", price: 7, contact:(Faker::PhoneNumber.phone_number ))
orangesnowmobile = snowmobile.items.create(name:"orange snowmobile", description:"this is a blue snowmobile", price: 7, contact:(Faker::PhoneNumber.phone_number ))
yellowsnowmobile = snowmobile.items.create(name:"yellow snowmobile", description:"this is a blue snowmobile", price: 7, contact:(Faker::PhoneNumber.phone_number ))
brownsnowmobile = snowmobile.items.create(name:"brown snowmobile", description:"this is a blue snowmobile", price: 7, contact:(Faker::PhoneNumber.phone_number ))
blacksnowmobile = snowmobile.items.create(name:"black snowmobile", description:"this is a blue snowmobile", price: 7, contact:(Faker::PhoneNumber.phone_number ))
whitesnowmobile = snowmobile.items.create(name:"white snowmobile", description:"this is a blue snowmobile", price: 7, contact:(Faker::PhoneNumber.phone_number ))
goldsnowmobile = snowmobile.items.create(name:"gold snowmobile", description:"this is a blue snowmobile", price: 7, contact:(Faker::PhoneNumber.phone_number ))

blueatv = atv.items.create(name:"blue atv", description:"this is a blue atv", price: 7, contact:(Faker::PhoneNumber.phone_number ))
greenatv = atv.items.create(name:"green atv", description:"this is a blue atv", price: 7, contact:(Faker::PhoneNumber.phone_number ))
purpleatv = atv.items.create(name:"purple atv", description:"this is a blue atv", price: 7, contact:(Faker::PhoneNumber.phone_number ))
redatv = atv.items.create(name:"red atv", description:"this is a blue atv", price: 7, contact:(Faker::PhoneNumber.phone_number ))
orangeatv = atv.items.create(name:"orange atv", description:"this is a blue atv", price: 7, contact:(Faker::PhoneNumber.phone_number ))
yellowatv = atv.items.create(name:"yellow atv", description:"this is a blue atv", price: 7, contact:(Faker::PhoneNumber.phone_number ))
brownatv = atv.items.create(name:"brown atv", description:"this is a blue atv", price: 7, contact:(Faker::PhoneNumber.phone_number ))
blackatv = atv.items.create(name:"black atv", description:"this is a blue atv", price: 7, contact:(Faker::PhoneNumber.phone_number ))
whiteatv = atv.items.create(name:"white atv", description:"this is a blue atv", price: 7, contact:(Faker::PhoneNumber.phone_number ))
goldatv = atv.items.create(name:"gold atv", description:"this is a blue atv", price: 7, contact:(Faker::PhoneNumber.phone_number ))

blueparaglider = paraglider.items.create(name:"blue paraglider", description:"this is a blue paraglider", price: 7, contact:(Faker::PhoneNumber.phone_number ))
greenparaglider = paraglider.items.create(name:"green paraglider", description:"this is a blue paraglider", price: 7, contact:(Faker::PhoneNumber.phone_number ))
purpleparaglider = paraglider.items.create(name:"purple paraglider", description:"this is a blue paraglider", price: 7, contact:(Faker::PhoneNumber.phone_number ))
redparaglider = paraglider.items.create(name:"red paraglider", description:"this is a blue paraglider", price: 7, contact:(Faker::PhoneNumber.phone_number ))
orangeparaglider = paraglider.items.create(name:"orange paraglider", description:"this is a blue paraglider", price: 7, contact:(Faker::PhoneNumber.phone_number ))
yellowparaglider = paraglider.items.create(name:"yellow paraglider", description:"this is a blue paraglider", price: 7, contact:(Faker::PhoneNumber.phone_number ))
brownparaglider = paraglider.items.create(name:"brown paraglider", description:"this is a blue paraglider", price: 7, contact:(Faker::PhoneNumber.phone_number ))
blackparaglider = paraglider.items.create(name:"black paraglider", description:"this is a blue paraglider", price: 7, contact:(Faker::PhoneNumber.phone_number ))
whiteparaglider = paraglider.items.create(name:"white paraglider", description:"this is a blue paraglider", price: 7, contact:(Faker::PhoneNumber.phone_number ))
goldparaglider = paraglider.items.create(name:"gold paraglider", description:"this is a blue paraglider", price: 7, contact:(Faker::PhoneNumber.phone_number ))

blueparaglider = submarine.items.create(name:"blue submarine", description:"this is a blue submarine", price: 7, contact:(Faker::PhoneNumber.phone_number ))
greenparaglider = submarine.items.create(name:"green submarine", description:"this is a blue submarine", price: 7, contact:(Faker::PhoneNumber.phone_number ))
purpleparaglider = submarine.items.create(name:"purple submarine", description:"this is a blue submarine", price: 7, contact:(Faker::PhoneNumber.phone_number ))
redparaglider = submarine.items.create(name:"red submarine", description:"this is a blue submarine", price: 7, contact:(Faker::PhoneNumber.phone_number ))
orangeparaglider = submarine.items.create(name:"orange submarine", description:"this is a blue submarine", price: 7, contact:(Faker::PhoneNumber.phone_number ))
yellowparaglider = submarine.items.create(name:"yellow submarine", description:"this is a blue submarine", price: 7, contact:(Faker::PhoneNumber.phone_number ))
brownparaglider = submarine.items.create(name:"brown submarine", description:"this is a blue submarine", price: 7, contact:(Faker::PhoneNumber.phone_number ))
blackparaglider = submarine.items.create(name:"black submarine", description:"this is a blue submarine", price: 7, contact:(Faker::PhoneNumber.phone_number ))
whiteparaglider = submarine.items.create(name:"white submarine", description:"this is a blue submarine", price: 7, contact:(Faker::PhoneNumber.phone_number ))
goldparaglider = submarine.items.create(name:"gold submarine", description:"this is a blue submarine", price: 7, contact:(Faker::PhoneNumber.phone_number ))

10.times do 
  Job.create(name:(Faker::Job.title), description:(Faker::ChuckNorris.fact))
end

10.times do 
  Article.create(name:(Faker::Quote.famous_last_words), author:(Faker::Name.name), description:(Faker::ChuckNorris.fact))
end