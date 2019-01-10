class Bookings < ApplicationRecord

  belongs_to :users

validates :Movie , presence:true, length: {minimum: 3 , maximum: 30},uniqueness: true
validates :Description , presence:true, length: {minimum: 3, maximum: 3000 },uniqueness: true
validates :Rating , presence:true, length: {minimum: 0, maximum: 100 }

  #validates :user_id,
            #presence: true


end