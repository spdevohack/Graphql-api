# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)



taylor = Artist.create!(
  email: "taylor.swift@example.com",
  first_name: "Taylor",
  last_name: "Swift"
)

Item.create!(
  [
    {
      title: "Red (Taylor's Version)",
      description: "Loving him is like driving a new Maserati down a dead-end street...",
      artist: taylor,
    },
    {
      title: "All Too Well (Taylor's Version)",
      description: "It was rare, I was there, I remember it all too well",
      artist: taylor,
    },
    {
      title: "We Are Never Ever Getting Back Together (Taylor's Version)",
      description: "You go talk to your friends, talk to my friends, talk to me",
      artist: taylor,
    },
    {
      title: "Begin Again (Taylor's Version)",
      description: "But on a Wednesday in a café, I watched it begin again",
      artist: taylor,
    }
  ]
)