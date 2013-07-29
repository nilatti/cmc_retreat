class RetreatCommitteeController < ApplicationController
  def show
    @families = Family.all
    @volunteer_tasks = VolunteerTask.all
  end
end
