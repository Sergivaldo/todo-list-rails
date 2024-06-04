# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

10.times do |i|
  Task.find_or_create_by(
    title: Faker::Lorem.sentence(word_count: 3),
    due_date: Faker::Date.in_date_period,
    status: Faker::Number.within(range: 0..2)
  )
  puts "Tarefas criadas(#{i + 1}/10)"
end
