class Review < ActiveRecord::Base
  belongs_to :restaurant
   validates :content, presence: true
   validates :restaurant_id, presence: true, allow_nil: false
   validates :rating, numericality: { only_integer: true }, inclusion: { in: [0,1,2,3,4,5], allow_nil: false }, presence: true
end
