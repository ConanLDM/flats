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
  description: "Quite warm, good for cooking - hard to focus with lava in your face but overall decent.",
  address: "Mount Vesuvius",
  image_url: "volcano.jpg",
  price_per_day: 45,
  user_id: 1
)
puts "Volcano desk created"

Flat.create(
  name: "Home office in a TREE HOUSE",
  description: "Live out your childhood dream whilst doing what make adult life suck - working!",
  address: "West Lexham, Norfolk",
  image_url: "treehouse.jpg",
  price_per_day: 30,
  user_id: 1
)
puts "Treehouse desk created"

Flat.create(
  name: "Work from a pub today",
  description: "Pretend it's about getting a change of scenery and let us ply you with booze all day. It's a win-win!",
  address: "The Dog & Bell, 116 Prince St, London",
  image_url: "pub.gif",
  price_per_day: 10,
  user_id: 1
)
puts "Pub desk created"

Flat.create(
  name: "Sit down at Morley's",
  description: "Can't heat your own place anymore? Come and see how long our chicken sits there before the evening rush.",
  address: "68 Westow Hill, London",
  image_url: "morleys.jpg",
  price_per_day: 5,
  user_id: 1
)
puts "Morley's desk created"

Flat.create(
  name: "Escape to a cabin in the woods",
  description: "This peaceful cabin away from anyone who can hear you scream is a great place to de-stress and recentre.",
  address: "Thorpe Forest, Shadwell, Thetford",
  image_url: "cabin.jpg",
  price_per_day: 13,
  user_id: 1
)
puts "Cabin desk created"

Flat.create(
  name: "City slicker corner desk",
  description: "Don't just look out onto the world, look down on the little people from this exclusive, elite suite.",
  address: "1666 Nightmare Towers, New York",
  image_url: "city.jpg",
  price_per_day: 500,
  user_id: 1
)
puts "City desk created"

Flat.create(
  name: "Mary's Garden",
  description: "Find out how Mary's Garden grows in this idylic country yard.",
  address: "3 Goodern Dr, Truro",
  image_url: "garden.png",
  price_per_day: 30,
  user_id: 1
)
puts "Garden desk created"

Flat.create(
  name: "Lakeview Power Office",
  description: "Look out over this serene and tranquil lake as you hire, fire and power play.",
  address: "1 Big House, Portinscale, Keswick",
  image_url: "hero.jpg",
  price_per_day: 120,
  user_id: 1
)
puts "Lake desk created"

Flat.create(
  name: "WFG: Work from a Gallery",
  description: "Find true inspiration. They say we don't look at art for long enough, how about sitting in front of a masterpiece all day?",
  address: "Place Georges-Pompidou, 75004 Paris",
  image_url: "kandinsky.png",
  price_per_day: 300,
  user_id: 1
)
puts "Kandinksy desk created"

Flat.create(
  name: "Let's do things more upstream",
  description: "Confuse your colleagues with the sounds of splashing. Sit in front a river and read emails all day. We don't care, just give us your dosh!",
  address: "Phyllis Ct Dr, Henley-on-Thames",
  image_url: "river.jpg",
  price_per_day: 75,
  user_id: 1
)
puts "River desk created"

Flat.create(
  name: "Boaty McBoat Desk",
  description: "Overgrown child with more money than sense? We have the perfect workday for you. Come and work in a damp room with no windows!",
  address: "Pier Head, Mann Island, Liverpool",
  image_url: "boat.jpg",
  price_per_day: 75,
  user_id: 1
)
puts "Boat desk created"

Flat.create(
  name: "ZzzzzZennnn",
  description: "Big on Minimalism? Doing mininaml work, paying your staff the bare minimum. We can tell you'll emjoy getting away from the riff-raff in this beautiful hideaway.",
  address: "Pier Head, Mann Island, Liverpool",
  image_url: "zen.jpg",
  price_per_day: 175,
  user_id: 1
)
puts "Zen desk created"

puts "#{Flat.all.size} created"
