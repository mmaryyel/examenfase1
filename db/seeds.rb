

# Este archivo sirve para crear registros de prueba
f1 = Flight.create(num_flight: "12354J", date: "12-12-2016", depart: "Terminal1", from: "Mexico", to: "Alemania", duration: "1:30", cost: 11200)
f2 = Flight.create(num_flight: "12354Z", date: "01-12-2016", depart: "Terminal2", from: "Mexico", to: "Alemania", duration: "3:30", cost: 3500)
f3 = Flight.create(num_flight: "12354M", date: "18-12-2016", depart: "Terminal2", from: "Mexico", to: "Alemania", duration: "6:00", cost: 6800)
f4 = Flight.create(num_flight: "12354L", date: "11-12-2016", depart: "Terminal1", from: "Mexico", to: "Alemania", duration: "17:30", cost: 23500)
f5 = Flight.create(num_flight: "12354S", date: "02-12-2016", depart: "Terminal2", from: "Mexico", to: "Alemania", duration: "21:40", cost: 13500)

u1 = User.create(name: "Maryel", email: "mmaryyel@gmail.com", password: "holamundo", admin: true )
u2 = User.create(name: "Vanessa", email: "vanessa@gmail.com", password: "vanesacodea")
u3 = User.create(name: "Karlal", email: "karla@gmail.com", password: "karlacodea")
u4 = User.create(name: "Mauricio", email: "mau@gmail.com", password: "maucodea")
u5 = User.create(name: "Max", email: "max@gmail.com", password: "maxcodea")


b1 = Booking.create(flight_id: f1.id, num_of_person: 2, total: 20)
b2 = Booking.create(flight_id: f2.id, num_of_person: 3, total: 120)
b3 = Booking.create(flight_id: f3.id, num_of_person: 4, total: 150)
b4 = Booking.create(flight_id: f4.id, num_of_person: 4, total: 130)
b5 = Booking.create(flight_id: f5.id, num_of_person: 4, total: 120)

UserFlight.create(flight_id: f1.id, user_id: u1.id)
UserFlight.create(flight_id: f2.id, user_id: u2.id)
UserFlight.create(flight_id: f3.id, user_id: u3.id)
UserFlight.create(flight_id: f4.id, user_id: u4.id)
UserFlight.create(flight_id: f5.id, user_id: u5.id)

UserBooking.create(booking_id: b1.id, user_id: u1.id)
UserBooking.create(booking_id: b2.id, user_id: u2.id)
UserBooking.create(booking_id: b3.id, user_id: u3.id)
UserBooking.create(booking_id: b4.id, user_id: u4.id)
UserBooking.create(booking_id: b5.id, user_id: u5.id)