class ChildcareController < ApplicationController
  def show
    @kids = Person.where("age < ?", 18)
    @kids.sort! { |a,b| a.age <=> b.age }
    @age_groups = Person.where("age < ?", 18).count(:group=>:age)
  end
end
