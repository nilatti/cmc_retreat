class FoodCommitteeController < ApplicationController
  def show
    @families = Family.all
    @food_items = FoodItem.all
  end
end
