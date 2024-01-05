# user = User.create(name: "Eli Banchik", email: "eli@email.com", password: "password", password_confirmation: "password")

# room = Room.create({
#   user_id: nil,
#   address: "1905 E Los Feliz Road",
#   city: "Los Angeles",
#   state: "CA",
#   price: 150,
#   description: "Quaint and Cozy Townhouse",
#   home_type: "townhouse",
#   room_type: "2 queen bedrooms",
#   total_occupancy: 4,
#   total_bedrooms: 2,
#   total_bathrooms: 2
# }
# )
# room = Room.create({
#   address: "500 N Jefferson Street",
#   city: "Silver Lake",
#   state: "CA",
#   price: 230,
#   description: "Renovated Silver Lake house with Private Backyard",
#   home_type: "craftsman",
#   room_type: "1 king, 1 queen",
#   total_occupancy: 6,
#   total_bedrooms: 2,
#   total_bathrooms: 2,
#   created_at: "2024-01-04T21:12:45.780Z",
#   updated_at: "2024-01-04T21:12:45.780Z"
# }
# )
# room = Room.create({
#   user_id: nil,
#   address: "1905 E Los Feliz Road",
#   city: "Los Angeles",
#   state: "CA",
#   price: 150,
#   description: "Quaint and Cozy Townhouse",
#   home_type: "townhouse",
#   room_type: "2 queen bedrooms",
#   total_occupancy: 4,
#   total_bedrooms: 2,
#   total_bathrooms: 2
# }
# )
# room = Room.create({
#   user_id: nil,
#   address: "1905 E Los Feliz Road",
#   city: "Los Angeles",
#   state: "CA",
#   price: 150,
#   description: "Quaint and Cozy Townhouse",
#   home_type: "townhouse",
#   room_type: "2 queen bedrooms",
#   total_occupancy: 4,
#   total_bedrooms: 2,
#   total_bathrooms: 2
# }
# )

#RESERVATION DATA

# res = Reservation.create!(user_id: 1, room_id: 3, start_date: "2024-01-01", end_date: "2024-01-10", price: 100, total: 1000)

res = Reservation.create!(user_id: 2, room_id: 2, start_date: "2024-02-02", end_date: "2024-02-07", price: 270, total: 1620)

res = Reservation.create!(user_id: 3, room_id: 1, start_date: "2024-04-10", end_date: "2024-04-16", price: 230, total: 1610)

res = Reservation.create!(user_id: 2, room_id: 3, start_date: "2024-10-01", end_date: "2024-10-15", price: 100, total: 1500)