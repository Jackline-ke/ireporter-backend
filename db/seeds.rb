# db/seeds.rb

# Sample User Data
users_data = [
    {
      username: "Henry_Waweru",
      email: "hwaweru700@gmail.com",
      password: "henrywaweru",
      password_confirmation: "henrywaweru",
      age: 20,
      gender: "male"
    },
    {
        username: "Jane_Mwangi",
        email: "janemw@gmail.com",
        password: "janemwangi",
        password_confirmation: "janemwangi",
        age: 25,
        gender: "female"
      },
      {
        username: "Jackline_Adhiambo",
        email: "JackieA@gmail.com",
        password: "jacklineadhiambo",
        password_confirmation: "jacklineadhiambo",
        age: 22,
        gender: "female"
      },
      {
        username: "Ernest_Wambugu",
        email: "Ernestw@gmail.com",
        password: "ernestwambugu",
        password_confirmation: "ernestwambugu",
        age: 20,
        gender: "male"
      },
      {
        username: "Ian_Mwangi",
        email: "Ianmw@gmail.com",
        password: "ianmwangi",
        password_confirmation: "ianmwangi",
        age: 24,
        gender: "male"
      }
  ]
  
  # Create Users
  users_data.each do |data|
    User.create(data)
  end
  