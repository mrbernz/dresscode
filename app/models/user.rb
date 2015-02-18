class User < ActiveRecord::Base
  has_secure_password
  has_many :outfits
  has_many :tops, through: :outfits
  has_many :pants, through: :outfits
  has_many :shoes, through: :outfits
end
