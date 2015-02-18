class Outfit < ActiveRecord::Base
  belongs_to :user
  belongs_to :top
  belongs_to :pant
  belongs_to :shoe
end
