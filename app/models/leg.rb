class Leg < ActiveRecord::Base
  validates_presence_of :location, :on => :create, :message => "can't be blank"
  
end
