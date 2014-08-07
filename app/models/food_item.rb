class FoodItem < ActiveRecord::Base
  attr_accessible :description, :requested
  has_many :food_promises
  has_many :families, :through => :food_promises
  scope :needed where(self.requested > self.food_promises_count)
end
