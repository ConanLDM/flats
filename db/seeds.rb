puts "Destroying records"
# User.destroy_all
Flat.destroy_all

User.create(
  email: "email@email.com",
  password: "password"
)
puts "Dummy user created"

Flat.create(
  name: "Desk hanging over a volcano",
  description: "Quite warm, good for cooking - hard to focus with lava in your face but overall decent.",
  address: "1 Volvano Hole, Vulcaña",
  image_url: "volcano.jpg",
  price_per_day: 45,
  user_id: 1
)
puts "Volcano desk created"

Flat.create(
  name: "Home office in a TREE HOUSE",
  description: "Live out your childhood dream whilst doing what make adult life suck - working!",
  address: "123 Grassy Gardens, Lintendon",
  image_url: "treehouse.jpg",
  price_per_day: 30,
  user_id: 1
)
puts "Treehouse desk created"

Flat.create(
  name: "Work from a pub today",
  description: "Pretend it's about getting a change of scenery and let us ply you with booze all day. It's a win-win!",
  address: "The Dog & Bell, 116 Prince St, London SE8 3JD",
  image_url: "pub.gif",
  price_per_day: 10,
  user_id: 1
)
puts "Pub desk created"

Flat.create(
  name: "Sit down at Morley's",
  description: "Can't to heat your own place anymore? Come and see how long our chicken sits there before the evening rush.",
  address: "Morley's Chicke, 68A Westow Hill, London SE19 1RX",
  image_url: "morleys.jpg",
  price_per_day: 5,
  user_id: 1
)
puts "Morley's desk created"

puts "#{Flat.all.size} created"
