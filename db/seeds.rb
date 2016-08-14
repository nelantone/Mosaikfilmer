# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Movie.create(
  name: "Test",
  category: "action",
  country: "Germany",
  year: 2016,
  score: 4.5,
  opinion: "good",
  actors: "Luigi Bros",
  user_id: "10",
  image: "poster1.jpg",
  )

Movie.create(
  name: "Test2",
  category: "action",
  country: "Spain",
  year: 2016,
  score: 5.0,
  opinion: "good",
  actors: "Curro Gimenez",
  user_id: "10",
  image: "poster2.jpg")

Movie.create(
  name: "Test3",
  category: "action",
  country: "Italy",
  year: 2016,
  score: 3.5,
  opinion: "good",
  actors: "Luigi Malito",
  user_id: "10",
  image: "poster3.jpg")

Movie.create(
  name: "Test4",
  category: "action",
  country: "Portugal",
  year: 2016,
  score: 4.0,
  opinion: "good",
  actors: "Luigi Bros",
  user_id: "10",
  image: "poster5.jpg")

Movie.create(
  name: "Test5",
  category: "action",
  country: "USA",
  year: 2016,
  score: 4.5,
  opinion: "good",
  actors: "Luigi Bros",
  user_id: "10",
  image:  "movie2.jpg")