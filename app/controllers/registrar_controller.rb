class RegistrarController < ApplicationController
  def show
    @families = Family.all
  end
  def edit
  	@families = Family.all
  end
end
