class Trip < ActiveRecord::Base
  has_many :legs, :dependent => :destroy
  accepts_nested_attributes_for :legs, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
