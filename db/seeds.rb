test_user = User.create!(
  email: "a@a.com",
  password: "password",
  confirmed_at: Time.now
)

5.times do
  User.create!(
    email: Faker::Internet.email,
    password: "password",
    confirmed_at: Time.now
  )
end

all_users = User.all

10.times do
  Item.create!(
    name: Faker::Simpsons.character,
    user: test_user,
    expires_at: Time.at(Time.now + 7.days)
)
end

50.times do
  Item.create!(
    name: Faker::Simpsons.character,
    user: all_users.sample,
    expires_at: Time.at(Time.now + 7.days)
)
end






p "seeded"
