taylor = User.create!(
  email: "taylor.swift@example.com",
  first_name: "Taylor",
  last_name: "Swift",
  age: 27
)

Pet.create!(
  [
    {
      name: "Bonny",
      description: "Funny Bunny",
      user: taylor,
    },
    {
      name: "Buster",
      description: "Small favorite pet",
      user: taylor,
    },
  ]
)