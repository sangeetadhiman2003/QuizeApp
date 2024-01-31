# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
p1 = "What's the color of apples?\n(a) Red\n(b) Pink\n(c) Orange"
p2 = "What's the color of bananas?\n(a) Red\n(b) Pink\n(c) Yellow"
p3 = "What's the color of pears?\n(a) Red\n(b) Green\n(c) Orange"

Question.create(prompt: p1, answer: "a")
Question.create(prompt: p2, answer: "c")
Question.create(prompt: p3, answer: "b")
