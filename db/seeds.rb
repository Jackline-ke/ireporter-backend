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
  
  
  category1 = Category.find_or_create_by(name: "Money")
  category2 = Category.find_or_create_by(name: "Assets")
  
  # Create Sample Posts
  Post.create!(
    title: "Corruption in Local Government",
    body: "There have been reports of corruption in the local government. Funds meant for public projects are being embezzled.",
    user: User.find_by(username: "Henry_Waweru"),
    flag: Flag.find_by(name: "Solved"),
    location: Location.find_by(name: "City Center"),
    category: category1
  )
  
  Post.create!(
    title: "Urgent Road Repair Needed",
    body: "The main road in the suburb area is in terrible condition, causing accidents and traffic congestion. Government intervention is urgently needed.",
    user: User.find_by(username: "Jackline_Adhiambo"),
    flag: Flag.find_by(name: "Pending"),
    location: Location.find_by(name: "Thika-road"),
    category: category2
  )
  
  puts "Sample data created successfully."
  