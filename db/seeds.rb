# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

12.times do
    puts "Creating repos..."
    Repository.create!(
        title: Faker::App.name,
        description: Faker::Lorem.paragraph,
        url: Faker::Internet.url,
        archived: Faker::Boolean.boolean,
        last_commit_at: Faker::Date.backward(days: rand(1..30))
    )
end

5.times do
    puts "Creating users..."
    User.create!(
        id: nil,
        provider: Faker::Alphanumeric.alpha(number: 10),
        uid: Faker::Alphanumeric.alpha(number: 10),
        nickname: Faker::Internet.username,
        password: 'password',
        password_confirmation: 'password',
        name: Faker::Name.name,
        email: Faker::Internet.unique.email,
        token: Faker::Alphanumeric.alpha(number: 20),
        token_expires_at: Faker::Time.forward(days: 30, period: :evening),
        encrypted_password: Faker::Alphanumeric.alpha(number: 20),
        reset_password_token: Faker::Alphanumeric.alpha(number: 20),
        reset_password_sent_at: Faker::Time.backward(days: 30, period: :evening),
        remember_created_at: Faker::Time.backward(days: 30, period: :evening),
        role: 'user',
    )
end

35.times do
    puts "Creating waiting..."
    Waiting.create!(
        email: Faker::Internet.unique.email,
        name: Faker::Name.name,
        discovered: Faker::Creature::Animal.name
    )
end
