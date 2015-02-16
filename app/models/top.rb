class Top < ActiveRecord::Base
  belongs_to :users
  has_many :outfits
end
