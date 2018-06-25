test_user = User.create!(
  email: "a@a.com",
  password: "password",
  confirmed_at: Time.now
)

50.times do
  Item.create!(
    name: Faker::Simpsons.character,
    user: test_user
)
end
