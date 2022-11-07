puts "Destroying records"
Booking.destroy_all
Flat.destroy_all

User.create(
  email: "email@email.com",
  password: "password"
)
puts "Dummy user created"
Flat.create(
  name: "Desk hanging over a volcano",
  description: "Quite warm, good for cooking - hard to focus with lava in your face but overall decent.
  Features include a preheated oven, rocks and no need for central heating. Book now and make the most of the heat",
  address: "Mount Vesuvius",
  image_url: "volcano.jpg",
  price_per_day: 45,
  user_id: 1
)
puts "Volcano desk created"

Flat.create(
  name: "Home office in a TREE HOUSE",
  description: "Live out your childhood dream whilst doing what make adult life suck - working!
  Features include the latest in high tech greenery, twigs and branches.",
  address: "West Lexham, Norfolk",
  image_url: "treehouse.jpg",
  price_per_day: 30,
  user_id: 1
)
puts "Treehouse desk created"

Flat.create(
  name: "Work from a pub today",
  description: "Pretend it's about getting a change of scenery and let us ply you with booze all day. It's a win-win!
  Vodka, whiskey, beer, gin, lager, cider, stout, all can be looked while you work away!",
  address: "The Dog & Bell, 116 Prince St, London",
  image_url: "pub.gif",
  price_per_day: 10,
  user_id: 1
)
puts "Pub desk created"

Flat.create(
  name: "Sit down at Morley's",
  description: "Can't heat your own place anymore? Come and see how long our chicken sits there before the evening rush.
  Features include chicken strips chicken wings, a plethora of meal deals and now also Pizza!",
  address: "68 Westow Hill, London",
  image_url: "morleys.jpg",
  price_per_day: 5,
  user_id: 1
)
puts "Morley's desk created"

Flat.create(
  name: "Escape to a cabin in the woods",
  description: "This peaceful cabin away from anyone who can hear you scream is a great place to de-stress and recentre.
  ",
  address: "Cage Ln, Thetford",
  image_url: "cabin.jpg",
  price_per_day: 13,
  user_id: 1
)
puts "Cabin desk created"

Flat.create(
  name: "City slicker corner desk",
  description: "Don't just look out onto the world, look down on the little people from this exclusive, elite suite.
  Whether your riches have came from crypto or pyramid schemes, this is the perfect location to enjoy your hard work.",
  address: "725 5th Ave, New York, NY",
  image_url: "city.jpg",
  price_per_day: 500,
  user_id: 1
)
puts "City desk created"

Flat.create(
  name: "Mary's Garden",
  description: "Find out how Mary's Garden grows in this idylic country yard.
  Mary offers unlimited tea to repeat guests. However her house is haunted and was only built 10 years ago...",
  address: "3 Goodern Dr, Truro",
  image_url: "garden.png",
  price_per_day: 30,
  user_id: 1
)
puts "Garden desk created"

Flat.create(
  name: "Lakeview Power Office",
  description: "Look out over this serene and tranquil lake as you hire, fire and power play.
  Do not expect 5G or fibre optic connection, a webpage loading in a minute is quick here.",
  address: "Crow Park Rd, Keswick",
  image_url: "hero.jpg",
  price_per_day: 120,
  user_id: 1
)
puts "Lake desk created"

Flat.create(
  name: "WFG: Work from a Gallery",
  description: "Find true inspiration. They say we don't look at art for long enough,
  how about sitting in front of a masterpiece all day?",
  address: "Place Georges-Pompidou, 75004 Paris",
  image_url: "kandinsky.png",
  price_per_day: 300,
  user_id: 1
)
puts "Kandinksy desk created"

Flat.create(
  name: "Let's do things more upstream",
  description: "Confuse your colleagues with the sounds of splashing. Sit in front a river and read emails all day.
  We don't care, just give us your dosh!",
  address: "Phyllis Ct Dr, Henley-on-Thames",
  image_url: "river.jpg",
  price_per_day: 75,
  user_id: 1
)
puts "River desk created"

Flat.create(
  name: "Boaty McBoat Desk",
  description: "Overgrown child with more money than sense? We have the perfect workday for you.
  Come and work in a damp room with no windows! No this is not a prison!!
  (They don't charge)",
  address: "32 Gower St, Liverpool",
  image_url: "boat.jpg",
  price_per_day: 75,
  user_id: 1
)
puts "Boat desk created"

Flat.create(
  name: "Highbury Apartments Desk",
  description: "Arsenal Manager Arsène Wenger, together with Club Directors and players from Arsenal’s past and present,
  made a memory-filled return to Highbury to celebrate the Official Opening of the Club’s former home
  as a unique residential development.
  After 93 years as a football stadium, Highbury has been converted into over 650 high specification one,
  two and three bedroom apartments and penthouses, with the development being named ‘Highbury Square’.
  The Art Deco façades of Highbury’s old Grade II-Listed East Stand, with its famous Marble Hall,
  and the locally-listed West Stand have been preserved, in order to retain the iconic status of the site.
  The North and South Stands have been replaced by new-build apartments designed in a contemporary style
  to harmonise with the East and West Stands.
  Paying tribute to the football terraces’ original rectangular arrangement,
  the apartments face inwards towards a central garden square, occupying the exact dimensions of the former pitch,
  which is the focal point of the development.
  Residents of Highbury Square will have access to a full range of amenities including a fitness centre,
  24-hour concierge service and underground car parking. All apartments have access to the old two-acre Highbury pitch,
  which has been converted into a private garden square.
  The apartments are three tube stops from King’s Cross St. Pancras,
  which serves the Eurostar to Paris and Brussels.
  The project also includes over 70 apartments that are shared equity/affordable housing,
  and also includes apartments that have been designed for disabled and wheelchair occupancy,
  and there is now only limited availability on all apartments in the development.",
  address: "Avenell Rd, Highbury Square, London N5 1FE",
  image_url: "highbury.jpg",
  price_per_day: 175,
  user_id: 1
)
puts "Highbury Apartments desk created"

puts "#{Flat.all.size} created"
