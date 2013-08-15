class VolunteerTask < ActiveRecord::Base
  attr_accessible :job_title, :job_description, :requested, :time

  has_many :volunteer_promises
  has_many :families, :through => :volunteer_promises

  def job_label
  	job_label = self.job_title + " -- " + self.time + "<i>" + self.job_description + "</i>"
  end
end
