class Bookings < ApplicationRecord

validates :Movie , presence:true, length: {minimum: 30 , maximum: 30}
validates :Description , presence:true, length: {minimum: 30, maximum: 300 }

end