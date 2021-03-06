class Family < ActiveRecord::Base
  validates :people, :presence => {:message => 'You must enter at least one family member.'}
  validates :email, :format => { :with => /^([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})$/i, :message => 'Your email address appears to be invalid' }, :allow_blank => true
  has_many :people, :dependent => :destroy
  has_many :food_promises, :dependent => :destroy
  has_many :food_items, :through => :food_promises

  has_many :volunteer_promises, :dependent => :destroy
  has_many :volunteer_tasks, :through => :volunteer_promises
   attr_accessible :allergies, :cabin, :camp, :contribution, :day_full_weekend, :day_partial_weekend, :friday_snack, :friday_supper, :late_fee, :paid, :saturday_breakfast, :saturday_dinner, :saturday_lunch, :saturday_snack, :sunday_breakfast, :sunday_lunch, :people_attributes, :food_item_ids, :email, :volunteer_task_ids
  accepts_nested_attributes_for :people, :allow_destroy => true

  def total_cost
    total = (cabin*35)+(camp*25)+(day_full_weekend*15)+(day_partial_weekend*10)  
    if total > 125 then adjusted_total = 125 else adjusted_total = total end
    if created_at > '2014-09-01 00:00:00 -0500' then adjusted_total = (adjusted_total+(self.total_registrants*5)) end
    if contribution then adjusted_total = (adjusted_total+contribution) end
    adjusted_total
  end

  def paypal_url(return_url) 
    values = { 
      :business => 'paypal@cmcva.org',
      :cmd => '_cart',
      :upload => 1,
      :return => return_url,
      :invoice => self.id
    }

    values.merge!({ 
      "amount_1" => total_cost,
      "item_name_1" => id,
      "item_number_1" => id,
      "quantity_1" => '1'
    })

    "https://www.paypal.com/cgi-bin/webscr?" + values.to_query
  end

  def family_name
     names = self.people.map(&:last_name)
     names.uniq!
     names.join("/") 
  end
  def family_folks
    names = self.people.map(&:first_name)
    names.join(",\s")
  end

  def family_url
    num = self.id.to_s	
    url = "http://retreat.herokuapp.com/families/" + num
  end

  def num_kids
    n = 0
    self.people.each do |person| 
      unless person.age.blank? 
        if person.age < 5
          n += 1
        end
      end
    end
    return n
  end

  def total_registrants
    total = self.cabin + self.camp + day_full_weekend + day_partial_weekend
  end
end
