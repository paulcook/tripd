class Leg < ActiveRecord::Base
  validates_presence_of :location, :on => :create, :message => "can't be blank"
  validates_presence_of :depart_arrive, :on => :create, :message => "can't be blank"
  validate :depart_or_arrive, :on => :create
  has_one :trip
  def depart_or_arrive
  	if depart_arrive_type != 'Departure' && depart_arrive_type != 'Arrival'
  		errors.add(:depart_arrive_type, "must be either 'Depart' or 'Arrive'")
  	end
  end
end
