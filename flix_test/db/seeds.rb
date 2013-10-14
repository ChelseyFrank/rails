# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Movie.create!([
  {
    title: "Iron Man",
    rating: "PG-13",
    total_gross: 318412101.00,
    description: "Tony Stark builds an armored suit to fight the throes of evil",
    released_on: "2008-05-02"
  },
  {
    title: "Superman",
    rating: "PG",
    total_gross: 134218018.00,
    description: "Clark Kent grows up to be the greatest super-hero",
    released_on: "1978-12-15"
  },
  {
    title: "Spider-Man",
    rating: "PG-13",
    total_gross: 403706375.00,
    description: "Peter Parker gets bit by a genetically modified spider",
    released_on: "2002-05-03"
  },
  {
    title: "Catwoman",
    rating: "PG-13",
    total_gross: 40200000.00,
    description: "Patience Philips has a more than respectable career as a graphic designer",
    released_on: "2004-07-23"
  }
])

movie = Movie.find_by(title: 'Iron Man')
movie.reviews.create!(name: "Roger Ebert", stars: 3, comment: "I laughed, I cried, I spilled my popcorn!")
movie.reviews.create!(name: "Gene Siskel", stars: 5, comment: "I'm a better reviewer than he is.")
movie.reviews.create!(name: "Peter Travers", stars: 4, comment: "It's been years since a movie superhero was this fierce and this funny.")

movie = Movie.find_by(title: 'Superman')
movie.reviews.create!(name: "Elvis Mitchell", stars: 5, comment: "It's a bird, it's a plane, it's a blockbuster!")