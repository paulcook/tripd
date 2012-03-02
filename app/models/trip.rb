class Trip < ActiveRecord::Base
  has_many :legs
  
  accepts_nested_attributes_for :legs
end
