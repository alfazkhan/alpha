class Users < ApplicationController

  VALID_EMAIL_REGEX= /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

validate :username , presence: true,
         length:{minimum:3 ,maximum:25},
         uniqueness: true
  validate :email,
           presence: true,
           uniqueness: {case_sensitive:true},
           format: {with: VALID_EMAIL_REGEX},
           length:{maximum:105}
end