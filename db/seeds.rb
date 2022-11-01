# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


 # 4.times do Flat.new []



  10.times do |i|
    puts "Importing movies from page #{i + 1}"
      Flat.create(
        name: "flat #{i}",
        description: 'bla bla bla',
        price: 100,
        user_id: 1
      )
  end
