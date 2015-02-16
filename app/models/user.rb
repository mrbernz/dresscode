class User < ActiveRecord::Base
  has_secure_password
  has_many :outfits
  has_many :tops
  has_many :pants
  has_many :shoes
end
