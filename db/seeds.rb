
# Create Admin User
admin_user = User.create!(
  username: "admin_user",
  email: "admin@example.com",
  password: "adminpassword",
  is_admin: true
)

# Create Regular Users
user1 = User.create!(
  username: "john_doe",
  email: "john@example.com",
  password: "user1password",
  is_admin: false
)

user2 = User.create!(
  username: "jane_smith",
  email: "jane@example.com",
  password: "user2password",
  is_admin: false
)

# Create Flags
flag1 = Flag.create!(name: "Corruption")
flag2 = Flag.create!(name: "Government Intervention")

# Create Locations
location1 = Location.create!(name: "City Center")
location2 = Location.create!(name: "Suburb Area")

# Create Categories
category1 = Category.create!(name: "Bribery")
category2 = Category.create!(name: "Embezzlement")

# Create Sample Posts
Post.create!(
  title: "Corruption in Local Government",
  body: "There have been reports of corruption in the local government. Funds meant for public projects are being embezzled.",
  user: user1,
  flag: flag1,
  location: location1,
  category: category1
)

Post.create!(
  title: "Urgent Road Repair Needed",
  body: "The main road in the suburb area is in terrible condition, causing accidents and traffic congestion. Government intervention is urgently needed.",
  user: user2,
  flag: flag2,
  location: location2,
  category: category2
)

puts "woooooow."
