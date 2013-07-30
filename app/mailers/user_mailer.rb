class UserMailer < ActionMailer::Base
  default from: "alisha.huber@gmail.com"

  def confirmation_email(family)
  	@family = family
  	mail(:to => @family.email, :subject => 'Thank you for signing up for CMC Retreat 2013')
  end
end
