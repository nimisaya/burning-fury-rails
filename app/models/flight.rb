class Flight < ApplicationRecord

#one to many relationship with airplanes
belongs_to :airplane, optional: true
#create flight and then connect them to the airplane later (non manditory)
has_many :reservations
end
