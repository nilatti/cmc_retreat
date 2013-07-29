class FoodPromise < ActiveRecord::Base
  attr_accessible :food_item_id, :family_id
  belongs_to :food_item, :counter_cache => true
  belongs_to :family
#  counter_culture :food_promises_counter
  # attr_accessible :title, :body
end
