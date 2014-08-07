class FoodItem < ActiveRecord::Base
  attr_accessible :description, :requested
  has_many :food_promises
  has_many :families, :through => :food_promises
  
end
