class Outfit < ActiveRecord::Base
  belongs_to :users
  belongs_to :top
  belongs_to :pant
  belongs_to :shoe
end
