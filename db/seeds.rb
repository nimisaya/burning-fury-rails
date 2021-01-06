# DUMMY DATA AND ASSOCIATIONS #
# - Airplane, Flights, Reservations and Users - #


#-- create planes --#
print "creating airplanes..."

Airplane.destroy_all

a1 = Airplane.create! name: 'Airbus A380', rows: 20, columns: 6
a2= Airplane.create! name: 'Airbus A330', rows: 14, columns: 4
a3= Airplane.create! name: 'Concord 2011', rows: 8, columns: 3

puts "created #{Airplane.count} planes"



#-- create flights --#
print "creating flights..."

Flight.destroy_all

f1= Flight.create! flightNumber: 'A232', date: 1/1/2021_01_05_202502, origin: 'new york', destination: 'melbourne'
f2= Flight.create! flightNumber: 'D222', date: 1/1/2021_01_05_202502, origin: 'melbourne', destination: 'new york'
f3= Flight.create! flightNumber: 'G302', date: 1/1/2021_01_05_202502, origin: 'singapore', destination: 'sydney'


puts "created #{Flight.count} flights"



#-- create users --#
## will need to add password/login details later ##
print "creating users..."

u1= User.create! username:"reecen96", password: "chicken", email: "reece@gmail.com"
u2= User.create! username:"andrea32", password: "chicken", email: "andre@gmail.com"
u3= User.create! username:"xxpeterparkerxx", password: "chicken", email: "peter@gmail.com"

puts "created #{User.count} users"



#--create reservations--#
## need to change from rown to row later (error needs to be fixed) ##
print "creating reservations..."

Reservation.destroy_all

r1= Reservation.create! row: 2, column: 'd'
r2= Reservation.create! row: 10, column: 'c'
r3= Reservation.create! row: 8, column: 'k'

puts "created #{Reservation.count} reservations"


#-- create associations between reservations & flights --#
f1.reservations << r1
f2.reservations << r2
f3.reservations << r3



#-- create associations between reservations & users --#
u1.reservations << r1
u2.reservations << r3
u3.reservations << r2


#-- create associations [flight to airplane]--#
a1.flights << f1 << f2
# flight 1 & 2 belong to airplane 1
a2.flights << f3
# flight 3 belongs to airplane 2



#--- testing the associations ---#
puts "__________________________________"
puts "testing airplane -< flight associations"
puts "the flight #{Flight.first.flightNumber} is flown by airplane #{Flight.first.airplane.name}"
puts "__________________________________"
puts "testing reservations associations"
puts "the Reservation for seat #{Reservation.first.row}#{Reservation.first.column}
was made by the passanger #{Reservation.first.user.username} for flight #{Reservation.first.flight.flightNumber} with the airplane #{Reservation.first.flight.airplane.name}"
