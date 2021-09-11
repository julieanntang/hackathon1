# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.destroy_all

require "faker"

# 10.times do
#     Job.create(name:(Faker::Job.title), description:(Faker::ChuckNorris.fact), salary:(Faker::Number.number(digits: 5)))
#   end
10.times do 
    Article.create(name:(Faker::Quote.famous_last_words), author:(Faker::Name.name), description:(Faker::ChuckNorris.fact))
end

job = Job.create(name:"Auto mechanic", description:"Larry H. Miller Jeep of South Salt Lake is looking for an exceptional mechanic with a can do attitude and a vast knowledge on how to fix everything. Great benefits: Holiday Pay, Bonus Pay, Insurance, Sick Days, Vacation Accrual. Job Qualifications: Specialization with Jeeps preffered. 5-8 years experience required. High school diploma or the equivalent recommended but not required.", salary: 51000.00)
job1 = Job.create(name:"Automotive Technician", description:" Steve Harvey is looking for a new Super Star to join our team. We are a high-volume, fast-paced dealer group with a proven and unmatched performance record. We offer highly competitive compensation packages and take great pride in providing our employees with a cohesive work culture.", salary: 63000.00)
job2 = Job.create(name:"Auto Sales person - Performance Toyota Bountiful", description:"We have a rare opening due to our ongoing success and expansion of business for the right individual", salary: 86000.00)
job3 = Job.create(name:"Boat Technician - Anchors Away Spanish Fork, UT", description:"- Work with parts and advisors to accurately repair customer concerns
     - Repair vehicles in a timely manner
    - Accurately diagnose customer concerns using store procedures and workshop manual", salary: 95000.00)
job4 = Job.create(name:"Engine Mechanic", description:"Any engine you can think of, you will be working on here at our location. We service all type of vehicles with engines. We are looking for a dependable mechanic to join our lively shop.", salary: 102000.00)
job5 = Job.create(name:"Airplaine Technician", description:"Delta Airlines is looking for experienced technicians willing to tavel on a semi-monthly basis to other airports.", salary: 84000.00)
job6 = Job.create(name:"Submarine Specialist", description:" Subpar of Naples, Florida is looking for a new Sub Specialist. We work on research submarines as well as military. Due to our contract with the military we require that all candidates have served at least 1 year in the military, any branch is excepted", salary: 128800.00)
job7 = Job.create(name:"Semi Technician", description:"SWIFT is looking for full-time technicians to fill 6 positions at our new location, located right in the middle of Trolley Square.", salary: 77000.00)
job8 = Job.create(name:"Mechanic Class B", description:"Makes repairs and maintains systems and parts associated with class 6, 7, & 8 diesel-powered tractors.
    Diagnoses failures and makes repairs on mechanical, electrical, or other various systems on a vehicle.", salary: 84000.00)
job9 = Job.create(name:"Automotive Technician/Mechanic", description:"Diagnose malfunctions & repairs, rebuilds, adjusts heavy duty diesel powered equipment.
    Dismantles, rebuilds, replaces, and adjusts engines, brakes, transmission drivelines, electrical, fuel, exhaust, cooling, suspension & hydraulics in heavy duty diesel trucks.", salary: 98000.00)

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

deckboat = boat.items.create(name:"Deck Boat", description:"Deck boats commonly have a boxier shape than other types of boats, with wide bows that don’t come to a point at the front.", price: 42599.00 contact:(8012425634))
pontoonboat = boat.items.create(name:"Pontoon Boat", description:"Generally speaking, it’s any sort of boat with a large, flat deck that’s mounted atop two or more metal tubes called pontoons.", price: 46500.00 contact:(23324234))
houseboat = boat.items.create(name:"House Boat", description:"A boat that has been designed or modified to be used primarily as a home. Some houseboats are not motorized, this one is motorized.", price: 150999.00 contact:(3854413246))
aluminumboat = boat.items.create(name:"Aluminum Fishing Boat", description:"Aluminum boats are significantly less expensive than fiberglass boats of a comparable size. This makes them they’re easier to load on a trailer, launch, retrieve, and push off a beach or bar.", price: 18899.00 contact:(4156848853))
flatsboat = boat.items.create(name:"Flats Boat", description:"Flats boats are commonly on the small side, in the 18 to 21 foot size range. They usually have raised casting platforms both fore and aft, and often their gunwales are wide enough to allow walking along them from one casting deck to the other. ", price: 16299.00, contact:(801384234))
jetboat = boat.items.create(name:"Jet boat", description:"Jets have always touted their superior draft advantage. Unlike a sterndrive, a jet's typical draft is only about 12 feet. This allows them to go in shallower waters with ease, and eliminates much of the worry of running aground or doing drive damage in skinny waters. ", price: 77000.00, contact:(8017289761))
brownboat = boat.items.create(name:"brown boat", description:"this is a brown boat", price: 7, contact:(23324234))
blackboat = boat.items.create(name:"black boat", description:"this is a black boat", price: 7, contact:(23324234))
whiteboat = boat.items.create(name:"white boat", description:"this is a white boat", price: 7, contact:(23324234))
goldboat = boat.items.create(name:"gold boat", description:"this is a gold boat", price: 7, contact:(23324234))

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