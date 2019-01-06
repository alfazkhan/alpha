class Bookings < ApplicationRecord

validates :Movie , presence:true, length: {minimum: 3 , maximum: 30}
validates :Description , presence:true, length: {minimum: 3, maximum: 300 }

end