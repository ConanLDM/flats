10.times do |i|
  puts "Importing movies from page #{i + 1}"
  Flat.create(
    name: "flat #{i}",
    description: 'bla bla bla',
    price: 100,
    user_id: 1
  )
end
