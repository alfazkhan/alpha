class Bookings < ApplicationRecord

validates :Movie , presence:true, length: {minimum: 3 , maximum: 30}
validates :Description , presence:true, length: {minimum: 3, maximum: 300 }
validates :Rating , presence:true, length: {minimum: 0, maximum: 100 }


end