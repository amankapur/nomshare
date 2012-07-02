class Host < ActiveRecord::Base
  attr_accessible :email, :number_of_guests
  validates :email, :number_of_guests, presence: true
  validates :number_of_guests, :numericality => { :greater_than => -1 }
end
