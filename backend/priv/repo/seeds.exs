# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Backend.Repo.insert!(%Backend.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.

Backend.Repo.insert!(%Backend.Post{
  title: "Test Post #1",
  content: "Some test content for the test post.",
  author: "User"
})

Backend.Repo.insert!(%Backend.Post{
  title: "Another Test POst",
  content: "Some test content for the test post.",
  author: "User"
})
